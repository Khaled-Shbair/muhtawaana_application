import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class FavoritesBaseUseCaseInput {
  int productId;

  FavoritesBaseUseCaseInput({required this.productId});
}

class FavoritesUseCase
    implements BaseUseCase<FavoritesBaseUseCaseInput, FavoritesModel> {
  final FavoritesRepository _repository;

  FavoritesUseCase(this._repository);

  @override
  Future<Either<Failure, FavoritesModel>> execute(
      FavoritesBaseUseCaseInput input) async {
    return await _repository.addOrDeleteFavoritesProduct(
      FavoritesRequest(productId: input.productId),
    );
  }
}
