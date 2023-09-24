import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class ChangePasswordRepository {
  Future<Either<Failure, ChangePasswordModel>> changePassword(
      ChangePasswordRequest request);
}
