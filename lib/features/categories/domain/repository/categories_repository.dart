import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, CategoriesModel>> getCategories();
}
