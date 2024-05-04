import 'dart:io';

import 'package:dashboard/controller/books_controller.dart';
import 'package:dashboard/controller/dasboard_controller.dart';
import 'package:dashboard/controller/images_controller.dart';
import 'package:dashboard/controller/motivationalstories_controller.dart';
import 'package:dashboard/controller/quotes_controller.dart';
import 'package:dashboard/controller/videos_controller.dart';
import 'package:dashboard/view/books.dart';
import 'package:dashboard/view/motivationalstories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/dashboard.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => BooksController()),
            ChangeNotifierProvider(
            create: (context) => ImagesController()),
            ChangeNotifierProvider(
            create: (context) => MotivationalStoriesController()),
            ChangeNotifierProvider(
            create: (context) => QuotesController()),
            ChangeNotifierProvider(
            create: (context) => VideosController()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashBoardHome(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
