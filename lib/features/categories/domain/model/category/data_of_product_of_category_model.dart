class DataOfProductOfCategoryModel {
  int id;
  String name;
  String image;
  double price;
  double oldPrice;
  double discount;
  String description;
  List<String> images;
  bool inFavorites;
  bool inCart;

  DataOfProductOfCategoryModel({
    required this.id,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.inCart,
    required this.inFavorites,
    required this.description,
    required this.name,
    required this.image,
    required this.images,
  });
}
