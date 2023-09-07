import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(LoginRequest request);
}
