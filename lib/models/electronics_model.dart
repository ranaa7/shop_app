class ElectronicsModel {
  String smartphones;
  String laptops;
  String homedecoration;
  String furniture;

  ElectronicsModel({required this.smartphones, required this.laptops, required this.homedecoration,required this.furniture});

  factory ElectronicsModel.fromjson(Map<String, dynamic> json) => ElectronicsModel(
      smartphones: json['smartphones'],
      laptops: json['laptops'],
      homedecoration: json['home-decoration'],
      furniture: json['furniture']);
}