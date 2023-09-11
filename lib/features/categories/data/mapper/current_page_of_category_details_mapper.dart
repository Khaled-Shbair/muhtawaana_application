import '/config/all_imports.dart';

extension CurrentPageOfCategoryDetailsMapper
    on CurrentPageOfCategoryDetailsResponse {
  toDomain() {
    return CurrentPageOfCategoryDetailsModel(
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
      data: data!
          .map<ProductCurrentPageOfCategoryDetailsModel>((e) => e.toDomain())
          .toList(),
    );
  }
}
