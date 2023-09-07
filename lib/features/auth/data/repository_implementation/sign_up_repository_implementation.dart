import 'package:dartz/dartz.dart';

import '/config/all_imports.dart';

class SignUpRepositoryImplementation extends SignUpRepository {
  final RemoteSignUpDataSource _dataSource;
  final NetworkInfo _networkInfo;

  SignUpRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, SignUpModel>> signUp(SignUpRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.signUp(request);
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
