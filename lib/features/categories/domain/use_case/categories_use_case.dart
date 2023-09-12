import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class CategoriesUseCase implements BaseOutUseCase<CategoriesModel> {
  final CategoriesRepository _repository;

  CategoriesUseCase(this._repository);

  @override
  Future<Either<Failure, CategoriesModel>> execute() async {
    return await _repository.getCategories();
  }
}
