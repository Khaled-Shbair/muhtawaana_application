import '/config/all_imports.dart';

extension AllProductsFavoritesMapper on AllProductsFavoritesResponse {
  toDomain() {
    return AllProductsFavoritesModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
