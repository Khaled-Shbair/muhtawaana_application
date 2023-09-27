import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class GetAllCartProductsRepository {
  Future<Either<Failure, GetAllCartProductsModel>> getAllCartProducts();
}
