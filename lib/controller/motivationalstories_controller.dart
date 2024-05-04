import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/motivationalstories.dart';
import 'package:http/http.dart' as http;

class MotivationalStoriesController extends ChangeNotifier{
  List<MotivationalStoriesModal> _ofStry = [];
  List<MotivationalStoriesModal> get ofStry => _ofStry;
  void stories() async {
    var response = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/chetan_bhagat/text_stories"));
    if (response.statusCode == 200) {
      _ofStry = MotivationalStoriesModal.ofMotivationStories(
          jsonDecode(response.body));
      print(response.body);
    } else {
      print("no data collected");
    }
    notifyListeners();
  }
}