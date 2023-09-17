import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class AllProductsFavoritesUseCase
    implements BaseOutUseCase<AllProductsFavoritesModel> {
  final AllProductsFavoritesRepository _repository;

  AllProductsFavoritesUseCase(this._repository);

  @override
  Future<Either<Failure, AllProductsFavoritesModel>> execute() async {
    return await _repository.getAllProductsFavoritesProduct();
  }
}
