import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class EditProfileRepositoryImplementation extends EditProfileRepository {
  final RemoteEditProfileDataSource _dataSource;
  final NetworkInfo _networkInfo;

  EditProfileRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, EditProfileModel>> editProfile(
      DataOfEditProfileRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.editProfile(request);
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
