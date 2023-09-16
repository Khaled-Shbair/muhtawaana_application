import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class FavoritesRepositoryImplementation extends FavoritesRepository {
  final RemoteFavoritesDataSource _dataSource;
  final NetworkInfo _networkInfo;

  FavoritesRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, FavoritesModel>> addOrDeleteFavoritesProduct(
    FavoritesRequest request,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.addOrDeleteFavorites(request);
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
