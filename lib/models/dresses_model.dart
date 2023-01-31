class Dress {
  String title;
  int id;
  String thumbnail;
  String description;
  int price;


  Dress({required this.title, required this.id, required this.thumbnail,required this.description,required this.price});

  factory Dress.fromjson(Map<String, dynamic> json) => Dress(
      title: json['title'],
      id: json['id'],
      thumbnail: json['thumbnail'],
      description: json['description'],
      price: json["price"]);

}