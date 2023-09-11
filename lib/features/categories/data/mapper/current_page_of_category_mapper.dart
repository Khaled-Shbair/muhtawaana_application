import '/config/all_imports.dart';

extension CurrentPageOfCategoryMapper on CurrentPageOfCategoryResponse {
  toDomain() {
    return CurrentPageOfCategoryModel(
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
      data: data!.map<DataCategoryModel>((e) => e.toDomain()).toList(),
    );
  }
}
