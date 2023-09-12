import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class CategoryBaseUseCaseInput {
  int id;

  CategoryBaseUseCaseInput(this.id);
}

class CategoryUseCase
    implements BaseUseCase<CategoryBaseUseCaseInput, CategoryModel> {
  final CategoryRepository _repository;

  CategoryUseCase(this._repository);

  @override
  Future<Either<Failure, CategoryModel>> execute(
      CategoryBaseUseCaseInput input) async {
    return await _repository.getCategory(CategoryRequest(input.id));
  }
}
