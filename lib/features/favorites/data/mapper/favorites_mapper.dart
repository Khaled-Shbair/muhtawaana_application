import '/config/all_imports.dart';

extension FavoritesMapper on FavoritesResponse {
  toDomain() {
    return FavoritesModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
