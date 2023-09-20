import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class EditProfileBaseUseCaseInput {
  String name;
  String email;
  String phone;
  String image;

  EditProfileBaseUseCaseInput({
    required this.email,
    required this.name,
    required this.phone,
    required this.image,
  });
}

class EditProfileUseCase
    implements BaseUseCase<EditProfileBaseUseCaseInput, EditProfileModel> {
  final EditProfileRepository _repository;

  EditProfileUseCase(this._repository);

  @override
  Future<Either<Failure, EditProfileModel>> execute(
      EditProfileBaseUseCaseInput input) async {
    return await _repository.editProfile(
      DataOfEditProfileRequest(
        name: input.name,
        image: input.image,
        phone: input.phone,
        email: input.email,
      ),
    );
  }
}
