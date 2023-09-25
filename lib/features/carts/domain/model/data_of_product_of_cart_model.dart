class DataOfProductOfCartModel {
  List<String> images;
  bool inFavorites;
  bool inCart;
  String image;
  String name;
  String description;
  int id;
  int price;
  int oldPrice;
  int discount;

  DataOfProductOfCartModel({
    required this.images,
    required this.inCart,
    required this.inFavorites,
    required this.id,
    required this.discount,
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.description,
  });
}
