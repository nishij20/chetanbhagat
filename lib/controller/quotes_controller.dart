import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/motivationquotes.dart';
import 'package:http/http.dart' as http;
class QuotesController extends ChangeNotifier{
  List<StoriesModal> _ofStories = [];
  List<StoriesModal> get ofStories => _ofStories;
  storiesResponse() async {
    var response = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/chetan_bhagat/text_quotes"));
    if (response.statusCode == 200) {
      _ofStories = StoriesModal.ofStories(jsonDecode(response.body));
      print(response.body);
    }
    notifyListeners();
  }
}