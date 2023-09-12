import '/config/all_imports.dart';

extension ListOfCategoriesMapper on ListOfCategoriesResponse {
  toDomain() {
    return ListOfCategoriesModel(
      currentPage: currentPage.onNull(),
      firstPageUrl: firstPageUrl.onNull(),
      from: from.onNull(),
      lastPage: lastPage.onNull(),
      path: path.onNull(),
      perPage: perPage.onNull(),
      lastPageUrl: lastPageUrl.onNull(),
      to: to.onNull(),
      total: total.onNull(),
      nextPageUrl: nextPageUrl.onNull(),
      prevPageUrl: prevPageUrl.onNull(),
      data: data!.map<DataOfCategoryModel>((e) => e.toDomain()).toList(),
    );
  }
}
