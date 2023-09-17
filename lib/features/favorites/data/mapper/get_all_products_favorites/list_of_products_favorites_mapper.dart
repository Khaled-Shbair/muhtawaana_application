import '/config/all_imports.dart';

extension ListOfProductsFavoritesMapper on ListOfProductsFavoritesResponse {
  toDomain() {
    return ListOfProductsFavoritesModel(
        currentPage: currentPage.onNull(),
        firstPageUrl: firstPageUrl.onNull(),
        from: from.onNull(),
        lastPage: lastPage.onNull(),
        lastPageUrl: lastPageUrl.onNull(),
        nextPageUrl: nextPageUrl.onNull(),
        path: path.onNull(),
        perPage: perPage.onNull(),
        prevPageUrl: prevPageUrl.onNull(),
        to: to.onNull(),
        total: total.onNull(),
        data: data!.map<ProductFavoritesModel>((e) => e.toDomain()).toList());
  }
}
