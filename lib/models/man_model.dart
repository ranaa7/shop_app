class ManModel {
  String shoes;
  String shirt;
  String watch;

  ManModel({required this.shoes, required this.shirt, required this.watch});

  factory ManModel.fromjson(Map<String, dynamic> json) => ManModel(
      shoes: json['mens-shoes'],
      shirt: json['mens-shirts'],
      watch: json['mens-watches']);
}
