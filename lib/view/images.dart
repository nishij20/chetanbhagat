import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:dashboard/controller/images_controller.dart';
import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonAppBar(
          widget: context.watch<ImagesController>().ofimages.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount:
                      context.watch<ImagesController>().ofimages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 240,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.zero,
                                image: DecorationImage(
                                    image: NetworkImage(context
                                        .watch<ImagesController>()
                                        .ofimages[index]
                                        .image!),
                                    fit: BoxFit.fill)),
                          )
                        ],
                      ),
                    );
                  }),
          text: "Images"),
    );
  }
}
