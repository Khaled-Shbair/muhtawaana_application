import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class LoginBaseUseCaseInput {
  String email;
  String password;

  LoginBaseUseCaseInput({
    required this.email,
    required this.password,
  });
}

class LoginUseCase implements BaseUseCase<LoginBaseUseCaseInput, LoginModel> {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, LoginModel>> execute(
      LoginBaseUseCaseInput input) async {
    return await _repository.login(
      LoginRequest(email: input.email, password: input.password),
    );
  }
}