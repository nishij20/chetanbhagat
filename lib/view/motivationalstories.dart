import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:dashboard/controller/motivationalstories_controller.dart';
import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MotivationalStories extends StatelessWidget {
  const MotivationalStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<MotivationalStoriesController>().ofStry.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : CommonAppBar(
              widget: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (int i = 0; i < context.watch<MotivationalStoriesController>().ofStry.length; i++) ...[
                      Card(
                        child: ListTile(
                          title: Text(context.watch<MotivationalStoriesController>().ofStry[i].title!),
                          subtitle: Text(context.watch<MotivationalStoriesController>().ofStry[i].textStories!),
                        ),
                      )
                    ]
                  ],
                ),
              ),
              text: "Motivational Quotes"),
    );
  }
}
