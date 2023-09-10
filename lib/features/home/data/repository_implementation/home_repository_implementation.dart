import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class HomeRepositoryImplementation extends HomeRepository {
  final RemoteHomeDataSource _dataSource;
  final NetworkInfo _networkInfo;

  HomeRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, HomeModel>> getHomeData() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.getHomeData();
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
