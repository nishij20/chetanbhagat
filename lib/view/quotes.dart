import 'package:dashboard/controller/quotes_controller.dart';
import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/dasboard_controller.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CommonAppBar(
      text: "Quotes",
      widget: context.watch<QuotesController>().ofStories.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        for (int i = 0;
                            i <
                                context
                                    .watch<QuotesController>()
                                    .ofStories
                                    .length;
                            i++) ...{
                          Card(
                            child: Text(context
                                .watch<QuotesController>()
                                .ofStories[i]
                                .textQuote!),
                          )
                        }
                      ],
                    ),
                  ),
                )
              ],
            ),
    ));
  }
}
