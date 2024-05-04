class VideosModal {
  String? id;
  String? title;
  String? videoUrl;

  VideosModal({this.id, this.title, this.videoUrl});

  VideosModal.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    videoUrl = json["video_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["video_url"] = videoUrl;
    return _data;
  }

  static List<VideosModal> ofMethod(List ofVideos) {
    return ofVideos.map((e) => VideosModal.fromJson(e)).toList();
  }
}
