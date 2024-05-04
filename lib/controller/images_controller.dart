import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/imagesmodel.dart';
import 'package:http/http.dart' as http;

class ImagesController extends ChangeNotifier{
  List<ImagesModal> _ofImages = [];
  List<ImagesModal> get ofimages => _ofImages;
  imageResponse() async {
    var resp = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/chetan_bhagat/image_quotes"));
    if (resp.statusCode == 200) {
      _ofImages = ImagesModal.ofImages(jsonDecode(resp.body));
    }
    notifyListeners();
  }
}