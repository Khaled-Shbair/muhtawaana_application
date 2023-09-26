import '/config/all_imports.dart';

extension UpdateQuantityOfProductCartMapper
    on UpdateQuantityOfProductCartResponse {
  toDomain() {
    return UpdateQuantityOfProductCartModel(
      status: status.onNull(),
      message: message.onNull(),
    );
  }
}
