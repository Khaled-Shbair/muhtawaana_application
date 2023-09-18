import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileModel>> getProfileData();
}
