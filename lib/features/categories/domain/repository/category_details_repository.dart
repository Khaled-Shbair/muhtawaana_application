import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class CategoryDetailsRepository {
  Future<Either<Failure, CategoryDetailsModel>> getCategoryDetails(
      CategoryDetailsRequest request);
}
