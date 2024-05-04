class ImagesModal {
  String? id;
  String? image;
  String? thumbImage;

  ImagesModal({this.id, this.image, this.thumbImage});

  ImagesModal.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

 static List<ImagesModal> ofImages(List images) {
    return images.map((e) => ImagesModal.fromJson(e)).toList();
  }
}
