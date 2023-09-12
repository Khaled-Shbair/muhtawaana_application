import '/config/all_imports.dart';

extension ProductDetailsMapper on ProductDetailsResponse {
  toDomain() {
    return ProductDetailsModel(
      status: status.onNull(),
      message: message.onNull(),
      data: data!.toDomain(),
    );
  }
}
