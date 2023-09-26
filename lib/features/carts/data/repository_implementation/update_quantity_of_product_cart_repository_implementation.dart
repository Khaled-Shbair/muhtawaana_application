import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class UpdateQuantityOfProductCartRepositoryImplementation
    extends UpdateQuantityOfProductCartRepository {
  final RemoteUpdateQuantityOfProductCartDataSource _dataSource;
  final NetworkInfo _networkInfo;

  UpdateQuantityOfProductCartRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, UpdateQuantityOfProductCartModel>> updateQuantityOfProductCart(
      UpdateQuantityOfProductCartRequest request,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.updateQuantityOfProductCart(request);
        if (response.status == true) {
          return Right(response.toDomain());
        } else {
          return Left(
            ErrorHandler.handle(
              data: null,
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
