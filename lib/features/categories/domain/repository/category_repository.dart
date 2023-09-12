import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class CategoryRepository {
  Future<Either<Failure, CategoryModel>> getCategory(CategoryRequest request);
}
