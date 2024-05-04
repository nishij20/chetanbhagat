import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/videomodal.dart';
import 'package:http/http.dart' as http;

class VideosController extends ChangeNotifier{
  List<VideosModal> _ofVideos = [];
  List<VideosModal> get ofVideos => _ofVideos;
  VideosResponse() async {
    var resp = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/chetan_bhagat/video_stories"));
    if (resp.statusCode == 200) {
      _ofVideos = VideosModal.ofMethod(jsonDecode(resp.body));
    }
    notifyListeners();
  }
}