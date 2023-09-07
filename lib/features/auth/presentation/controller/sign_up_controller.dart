import '/config/all_imports.dart';

class SignUpController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController phone;
  late TextEditingController name;

  var formKey = GlobalKey<FormState>();
  bool obscureTextPassword = false;
  bool obscureTextConfirmPassword = false;
  bool policyPrivacy = true;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    confirmPassword = TextEditingController();
    phone = TextEditingController();
    name = TextEditingController();
    password = TextEditingController();
  }

  void changeObscureTextPassword() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

  void changeObscureTextConfirmPassword() {
    obscureTextConfirmPassword = !obscureTextConfirmPassword;
    update();
  }

  void changePolicyPrivacy() {
    policyPrivacy = !policyPrivacy;
    update();
  }

  String? validatorEmail(String? email) {}

  String? validatorName(String? name) {}

  String? validatorPassword(String? password) {}

  String? validatorConfirmPassword(String? confirmPassword) {}

  String? validatorPhone(String? phone) {}

  void performSingUp() {}
}
