import 'package:dartz/dartz.dart';

import '/config/all_imports.dart';

class LoginRepositoryImplementation extends LoginRepository {
  final RemoteLoginDataSource _dataSource;
  final NetworkInfo _networkInfo;

  LoginRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, LoginModel>> login(
    LoginRequest request,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.login(request);
        return Right(response.toDomain());
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(
        Failure(
          message: ManagerStrings.noInternetConnection,
          code: ResponseCode.NO_INTERNET_CONNECTION.value,
        ),
      );
    }
  }
}
