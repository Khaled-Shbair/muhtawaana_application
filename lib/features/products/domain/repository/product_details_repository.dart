import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class ProductDetailsRepository {
  Future<Either<Failure, ProductDetailsModel>> getProductDetails(
    ProductDetailsRequest request,
  );
}
