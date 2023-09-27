import 'package:dartz/dartz.dart';

import '/config/all_imports.dart';

class GetAllCartProductsUseCase
    implements BaseOutUseCase<GetAllCartProductsModel> {
  final GetAllCartProductsRepository _repository;

  GetAllCartProductsUseCase(this._repository);

  @override
  Future<Either<Failure, GetAllCartProductsModel>> execute() async {
    return await _repository.getAllCartProducts();
  }
}
