import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class AllProductsFavoritesRepositoryImplementation
    extends AllProductsFavoritesRepository {
  final RemoteAllProductsFavoritesDataSource _dataSource;
  final NetworkInfo _networkInfo;

  AllProductsFavoritesRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, AllProductsFavoritesModel>>
      getAllProductsFavoritesProduct() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.getAllProductsFavorites();
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
