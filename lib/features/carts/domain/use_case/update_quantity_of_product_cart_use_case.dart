import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class UpdateQuantityOfProductCartBaseUseCaseInput {
  int id;
  int quantity;

  UpdateQuantityOfProductCartBaseUseCaseInput({
    required this.id,
    required this.quantity,
  });
}

class UpdateQuantityOfProductCartUseCase
    implements
        BaseUseCase<UpdateQuantityOfProductCartBaseUseCaseInput,
            UpdateQuantityOfProductCartModel> {
  final UpdateQuantityOfProductCartRepository _repository;

  UpdateQuantityOfProductCartUseCase(this._repository);

  @override
  Future<Either<Failure, UpdateQuantityOfProductCartModel>> execute(
      UpdateQuantityOfProductCartBaseUseCaseInput input) async {
    return await _repository.updateQuantityOfProductCart(
      UpdateQuantityOfProductCartRequest(
        id: input.id,
        quantity: input.quantity,
      ),
    );
  }
}
