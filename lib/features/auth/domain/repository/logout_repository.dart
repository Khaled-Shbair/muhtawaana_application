import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class LogoutRepository {
  Future<Either<Failure, LogoutModel>> logout();
}
