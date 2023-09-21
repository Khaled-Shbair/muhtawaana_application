import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class LogoutUseCase implements BaseOutUseCase<LogoutModel> {
  final LogoutRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<Failure, LogoutModel>> execute() async {
    return await _repository.logout();
  }
}
