import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, FavoritesModel>> addOrDeleteFavoritesProduct(
    FavoritesRequest request,
  );
}
