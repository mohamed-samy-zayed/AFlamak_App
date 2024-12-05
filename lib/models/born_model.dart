class BornModel {
  final String photo;
  final String name;
  final String info;
  final List<String> categories;

  BornModel(
      {required this.photo,
      required this.name,
      required this.info,
      required this.categories});

  factory BornModel.fromJson(json) {
    return BornModel(
        photo: json['list'][0]['image'],
        name: json['list'][0]['name'],
        info: json['list'][0]['info'],
        categories: json['list'][0]['categories']);


    
  }
}
