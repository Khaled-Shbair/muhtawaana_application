import '/config/all_imports.dart';

class ListOfProductsOfCategoryModel {
  int currentPage;
  List<DataOfProductOfCategoryModel> data;
  String firstPageUrl;
  int from;
  int to;
  int lastPage;
  int perPage;
  int total;
  String lastPageUrl;
  String path;
  String nextPageUrl;
  String prevPageUrl;

  ListOfProductsOfCategoryModel({
    required this.currentPage,
    required this.data,
    required this.perPage,
    required this.lastPage,
    required this.firstPageUrl,
    required this.to,
    required this.from,
    required this.path,
    required this.lastPageUrl,
    required this.nextPageUrl,
    required this.prevPageUrl,
    required this.total,
  });
}
