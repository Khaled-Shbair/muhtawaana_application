import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class AddOrDeleteProductCartRepository {
  Future<Either<Failure, AddOrDeleteProductCartModel>> addOrDeleteProductCart(
    AddOrDeleteProductCartRequest request,
  );
}
