class WomanModel {
  String jewelary;
  String bags;
  String watch;
  String skincare;
  String womensdresses;
  String tops;

  WomanModel({required this.jewelary, required this.bags, required this.watch,required this.skincare,required this.womensdresses,required this.tops});

  factory WomanModel.fromjson(Map<String, dynamic> json) => WomanModel(
      jewelary: json['womens-jewellery'],
      bags: json['womens-bags'],
      watch: json['womens-watches'],
      skincare: json['skincare'],
      womensdresses: json['womens-dresses'],
      tops: json['tops']);
}