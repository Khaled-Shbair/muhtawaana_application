class DataOfProductFavoritesModel {
  int id;
  String name;
  String image;
  double price;
  double oldPrice;
  double discount;
  String description;

  DataOfProductFavoritesModel({
    required this.id,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.description,
    required this.name,
    required this.image,
  });
}
