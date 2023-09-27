import '/config/all_imports.dart';

extension AddOrDeleteProductCartMapper on AddOrDeleteProductCartResponse {
  toDomain() {
    return AddOrDeleteProductCartModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
