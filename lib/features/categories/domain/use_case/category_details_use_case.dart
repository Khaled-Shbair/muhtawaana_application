import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class CategoryDetailsBaseUseCaseInput {
  int id;

  CategoryDetailsBaseUseCaseInput(this.id);
}

class CategoryDetailsUseCase
    implements
        BaseUseCase<CategoryDetailsBaseUseCaseInput, CategoryDetailsModel> {
  final CategoryDetailsRepository _repository;

  CategoryDetailsUseCase(this._repository);

  @override
  Future<Either<Failure, CategoryDetailsModel>> execute(
      CategoryDetailsBaseUseCaseInput input) async {
    return await _repository.getCategoryDetails(
      CategoryDetailsRequest(input.id),
    );
  }
}
