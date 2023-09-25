import 'package:dartz/dartz.dart';

import '/config/all_imports.dart';

class GetAllCartProductsRepositoryImplementation
    extends GetAllCartProductsRepository {
  final RemoteGetAllCartProductsDataSource _dataSource;
  final NetworkInfo _networkInfo;

  GetAllCartProductsRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, GetAllCartProductsModel>> getAllCartProducts() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.getAllCartProducts();
        if (response.status == true) {
          return Right(response.toDomain());
        } else {
          return Left(
            ErrorHandler.handle(
              data: response.data,
              message: response.message,
              status: response.status,
            ).failure,
          );
        }
      } catch (e) {
        return Left(
          ErrorHandler.handle(
            data: null,
            message: null,
            status: false,
          ).failure,
        );
      }
    } else {
      return Left(
        Failure(
          message: ManagerStrings.noInternetConnection,
          status: false,
        ),
      );
    }
  }
}
