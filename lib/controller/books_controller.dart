import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/booksmodel.dart';
import 'package:http/http.dart'as http;

class BooksController extends ChangeNotifier{
  List<BooksModal> _ofBooks = [];
  List<BooksModal> get ofBooks => _ofBooks;
  void booksResponse() async {
    var response = await http.get(
        Uri.parse("https://mapi.trycatchtech.com/v3/chetan_bhagat/book_link"));
    if (response.statusCode == 200) {
      _ofBooks = BooksModal.ofMethod(jsonDecode(response.body));
    }
    notifyListeners();
  }
}