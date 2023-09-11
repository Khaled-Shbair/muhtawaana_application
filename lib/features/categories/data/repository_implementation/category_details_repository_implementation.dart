import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class CategoryDetailsRepositoryImplementation
    extends CategoryDetailsRepository {
  final RemoteCategoryDetailsDataSource _dataSource;
  final NetworkInfo _networkInfo;

  CategoryDetailsRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, CategoryDetailsModel>> getCategoryDetails(
      CategoryDetailsRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.getCategoryDetails(request);
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
