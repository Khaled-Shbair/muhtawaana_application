import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class ProfileUseCase implements BaseOutUseCase<ProfileModel> {
  final ProfileRepository _repository;

  ProfileUseCase(this._repository);

  @override
  Future<Either<Failure, ProfileModel>> execute() async {
    return await _repository.getProfileData();
  }
}
