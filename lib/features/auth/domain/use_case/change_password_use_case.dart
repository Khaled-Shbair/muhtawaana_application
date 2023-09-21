import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class ChangePasswordBaseUseCaseInput {
  String currentPassword;
  String newPassword;

  ChangePasswordBaseUseCaseInput({
    required this.currentPassword,
    required this.newPassword,
  });
}

class ChangePasswordUseCase
    implements
        BaseUseCase<ChangePasswordBaseUseCaseInput, ChangePasswordModel> {
  final ChangePasswordRepository _repository;

  ChangePasswordUseCase(this._repository);

  @override
  Future<Either<Failure, ChangePasswordModel>> execute(
    ChangePasswordBaseUseCaseInput input,
  ) async {
    return await _repository.changePassword(
      ChangePasswordRequest(
        currentPassword: input.currentPassword,
        newPassword: input.newPassword,
      ),
    );
  }
}
