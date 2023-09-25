import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class AddOrDeleteProductCartBaseUseCaseInput {
  int productId;

  AddOrDeleteProductCartBaseUseCaseInput({
    required this.productId,
  });
}

class AddOrDeleteProductCartUseCase
    implements
        BaseUseCase<AddOrDeleteProductCartBaseUseCaseInput,
            AddOrDeleteProductCartModel> {
  final AddOrDeleteProductCartRepository _repository;

  AddOrDeleteProductCartUseCase(this._repository);

  @override
  Future<Either<Failure, AddOrDeleteProductCartModel>> execute(
      AddOrDeleteProductCartBaseUseCaseInput input) async {
    return await _repository.addOrDeleteProductCart(
      AddOrDeleteProductCartRequest(productId: input.productId),
    );
  }
}
