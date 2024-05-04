import 'package:dashboard/controller/books_controller.dart';
import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<BooksController>().ofBooks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : CommonAppBar(
              text: "Books",
              widget: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                      itemCount:
                          context.watch<BooksController>().ofBooks.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 250),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.white,
                          child: context
                                      .watch<BooksController>()
                                      .ofBooks[index]
                                      .bookLinkImage !=
                                  null
                              ? Image.network(
                                  context
                                      .watch<BooksController>()
                                      .ofBooks[index]
                                      .bookLinkImage!,
                                  // fit: BoxFit.cover,
                                  height: 100,
                                )
                              : const Text("No Data"),
                        );
                      }),
                ),
              ),
            ),
    );
  }
}
