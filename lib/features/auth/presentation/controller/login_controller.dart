import '/config/all_imports.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TapGestureRecognizer recognizer;
  var formKey = GlobalKey<FormState>();
  bool obscureText = false;
  bool rememberMe = true;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    recognizer = TapGestureRecognizer()
      ..onTap = () => Get.toNamed(Routes.signUpScreen);
  }

  void changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  void changeRememberMe() {
    rememberMe = !rememberMe;
    update();
  }

  String? validatorEmail(String? email) {}

  String? validatorPassword(String? password) {}

  void performLogin() {}

  void _login() {}

  void loginByFaceBook() {}

  void loginByGoogle() {}
}
