import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class HomeUseCase implements BaseOutUseCase<HomeModel> {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, HomeModel>> execute() async {
    return await _repository.getHomeData();
  }
}
