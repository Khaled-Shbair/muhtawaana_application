import '/config/all_imports.dart';

extension HomeMapper on HomeResponse {
  toDomain() {
    return HomeModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data?.toDomain(),
    );
  }
}
