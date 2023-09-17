import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class AllProductsFavoritesRepository {
  Future<Either<Failure, AllProductsFavoritesModel>>
      getAllProductsFavoritesProduct();
}
