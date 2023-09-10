class ProductDataHomeModel {
  int id;
  double price;
  double oldPrice;
  double discount;
  String image;
  String name;
  String description;
  bool inFavorites;
  bool inCart;
  List<String> images;

  ProductDataHomeModel({
    required this.id,
    required this.price,
    required this.oldPrice,
    required this.description,
    required this.discount,
    required this.images,
    required this.image,
    required this.inCart,
    required this.inFavorites,
    required this.name,
  });
}
