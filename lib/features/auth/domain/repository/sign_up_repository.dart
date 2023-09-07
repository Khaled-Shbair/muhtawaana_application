import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class SignUpRepository {
  Future<Either<Failure, SignUpModel>> signUp(SignUpRequest request);
}
