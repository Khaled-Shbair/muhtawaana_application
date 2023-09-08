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
        SignUpResponse response = await _dataSource.signUp(request);
        if (response.status == true) {
          return Right(response.toDomain());
        } else {
          return Left(
            ErrorHandler.handle(
              status: response.status,
              message: response.message,
              data: response.data,
            ).failure,
          );
        }
      } catch (e) {
        return Left(
          ErrorHandler.handle(
            status: false,
            message: null,
            data: null,
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
