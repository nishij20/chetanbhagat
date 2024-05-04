import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:dashboard/controller/videos_controller.dart';
import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'videoplayer.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonAppBar(
          widget: context.watch<VideosController>().ofVideos.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  shrinkWrap: true,
                  addAutomaticKeepAlives: false,
                  addRepaintBoundaries: false,
                  addSemanticIndexes: false,
                  scrollDirection: Axis.vertical,
                  itemCount:
                      context.watch<VideosController>().ofVideos.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 20,
                      endIndent: 20,
                    );
                  },
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoPlayer(
                                            stories: context
                                                .watch<VideosController>()
                                                .ofVideos[i],
                                          )));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              height: MediaQuery.sizeOf(context).height / 18,
                              width: MediaQuery.sizeOf(context).width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        context
                                            .watch<VideosController>()
                                            .ofVideos[i]
                                            .title!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
          text: "Videos"),
    );
  }
}
