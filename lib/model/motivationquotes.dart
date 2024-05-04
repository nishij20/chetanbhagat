class StoriesModal {
  String? id;
  String? textQuote;

  StoriesModal({this.id, this.textQuote});

  StoriesModal.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    textQuote = json["text_quote"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["text_quote"] = textQuote;
    return _data;
  }

  static List<StoriesModal> ofStories(List stories) {
    return stories.map((e) => StoriesModal.fromJson(e)).toList();
  }
}
