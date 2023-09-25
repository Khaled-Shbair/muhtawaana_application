import '/config/all_imports.dart';

extension GetAllCartProductsMapper on GetAllCartProductsResponse {
  toDomain() {
    return GetAllCartProductsModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
