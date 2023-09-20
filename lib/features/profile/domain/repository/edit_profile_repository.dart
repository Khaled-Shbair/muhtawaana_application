import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class EditProfileRepository {
  Future<Either<Failure, EditProfileModel>> editProfile(
      DataOfEditProfileRequest request);
}
