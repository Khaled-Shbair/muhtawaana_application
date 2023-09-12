import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class CategoryRepositoryImplementation
    extends CategoryRepository {
  final RemoteCategoryDataSource _dataSource;
  final NetworkInfo _networkInfo;

  CategoryRepositoryImplementation(
    this._networkInfo,
    this._dataSource,
  );

  @override
  Future<Either<Failure, CategoryModel>> getCategory(
      CategoryRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _dataSource.getCategory(request);
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
