import 'package:dashboard/controller/books_controller.dart';
import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../controller/images_controller.dart';
import '../controller/motivationalstories_controller.dart';
import '../controller/quotes_controller.dart';
import '../controller/videos_controller.dart';
import '../widgets/commonappbar.dart';
import 'books.dart';
import 'images.dart';
import 'motivationalstories.dart';
import 'quotes.dart';
import 'videos.dart';

class DashBoardHome extends StatefulWidget {
  const DashBoardHome({super.key});

  @override
  State<DashBoardHome> createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  @override
  Widget build(BuildContext context) {
    List<Category> ofCategory = [
      Category(
          image: "assets/images/books.png",
          text: "Books",
          ontap: () {
            context.read<BooksController>().booksResponse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Books()));
          }),
      Category(
          image: "assets/images/motivational.png",
          text: "Motivational Stories",
          ontap: () {
            context.read<MotivationalStoriesController>().stories();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => (const MotivationalStories())));
          }),
      Category(
          image: "assets/images/quotes.png",
          text: "Quotes",
          ontap: () {
            context.read<QuotesController>().storiesResponse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Quotes()));
          }),
      Category(
          image: "assets/images/images.png",
          text: "Images",
          ontap: () {
            context.read<ImagesController>().imageResponse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Images()));
          }),
      Category(
          image: "assets/images/video.png",
          text: "Videos",
          ontap: () {
            context.read<VideosController>().VideosResponse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Videos()));
          }),
    ];
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: CommonAppBar(
            text: "Home",
            widget: GridView.builder(
                shrinkWrap: true,
                itemCount: ofCategory.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            ofCategory[i].ontap();
                          },
                          child: Image.asset(
                            ofCategory[i].image,
                            height: 130,
                            // width: 180,
                          ),
                        ),
                        Text(
                          ofCategory[i].text,
                          maxLines: 2,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  );
                })));
  }
}
