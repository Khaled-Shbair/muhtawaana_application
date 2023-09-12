import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class ProductDetailsBaseUseCaseInput {
  int id;

  ProductDetailsBaseUseCaseInput(this.id);
}

class ProductDetailsUseCase
    implements BaseUseCase<ProductDetailsBaseUseCaseInput, ProductDetailsModel> {
  final ProductDetailsRepository _repository;

  ProductDetailsUseCase(this._repository);

  @override
  Future<Either<Failure, ProductDetailsModel>> execute(
    ProductDetailsBaseUseCaseInput input,
  ) async {
    return await _repository.getProductDetails(ProductDetailsRequest(input.id));
  }
}
