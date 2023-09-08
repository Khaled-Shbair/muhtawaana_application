import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

class SignUpBaseUseCaseInput {
  String email;
  String password;
  String name;
  String phone;

  SignUpBaseUseCaseInput({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });
}

class SignUpUseCase
    implements BaseUseCase<SignUpBaseUseCaseInput, SignUpModel> {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<Either<Failure, SignUpModel>> execute(
      SignUpBaseUseCaseInput input) async {
    return await _repository.signUp(
      SignUpRequest(
        email: input.email,
        password: input.password,
        phone: input.phone,
        name: input.name,
      ),
    );
  }
}
