class DummyData {
  late int? id;
  late String title;
  late String description;
  late List<String> images;

  DummyData({
    this.id,
    required this.title,
    required this.description,
    required this.images,
  });

  DummyData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'images': images,
    };
  }
}
