class MotivationalStoriesModal {
  String? id;
  String? title;
  String? textStories;
  String? image;
  String? thumbImage;

  MotivationalStoriesModal(
      {this.id, this.title, this.textStories, this.image, this.thumbImage});

  MotivationalStoriesModal.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    textStories = json["text_stories"];
    image = json["image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["title"] = title;
    data["text_stories"] = textStories;
    data["image"] = image;
    data["thumb_image"] = thumbImage;
    return data;
  }

  static List<MotivationalStoriesModal> ofMotivationStories(List ofStories) {
    return ofStories.map((e) => MotivationalStoriesModal.fromJson(e)).toList();
  }
}
