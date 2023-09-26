import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class UpdateQuantityOfProductCartRepository {
  Future<Either<Failure, UpdateQuantityOfProductCartModel>>
      updateQuantityOfProductCart(
    UpdateQuantityOfProductCartRequest request,
  );
}
