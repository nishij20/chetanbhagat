import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../model/booksmodel.dart';
import '../model/imagesmodel.dart';
import '../model/motivationalstories.dart';
import 'package:http/http.dart' as http;

import '../model/motivationquotes.dart';
import '../model/videomodal.dart';
import '../view/books.dart';
import '../view/images.dart';
import '../view/motivationalstories.dart';
import '../view/quotes.dart';
import '../view/videos.dart';

class DashBoardController extends ChangeNotifier {
  

  

  

  

  

  // List<Category> _ofCategory = [];
  // List<Category> get ofCategory => _ofCategory;
  // void onPressed() {
  //   _ofCategory = [
  //     Category(
  //         image: "assets/images/books.png",
  //         text: "Books",
  //         ontap: (context) {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => const Books()));
  //         }),
  //     Category(
  //         image: "assets/images/motivational.png",
  //         text: "Motivational Stories",
  //         ontap: (context) {
  //           Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                   builder: (context) => (const MotivationalStories())));
  //         }),
  //     Category(
  //         image: "assets/images/quotes.png",
  //         text: "Quotes",
  //         ontap: (context) {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => const Quotes()));
  //         }),
  //     Category(
  //         image: "assets/images/images.png",
  //         text: "Images",
  //         ontap: (context) {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => const Images()));
  //         }),
  //     Category(
  //         image: "assets/images/video.png",
  //         text: "Videos",
  //         ontap: (context) {
  //           Navigator.push(context,
  //               MaterialPageRoute(builder: (context) => const Videos()));
  //         }),
  //   ];
  // }
}

class Category {
  String image;
  String text;
  Function ontap;

  Category({required this.image, required this.text, required this.ontap});
}
