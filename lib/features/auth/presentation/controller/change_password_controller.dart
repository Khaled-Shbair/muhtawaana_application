import '/config/all_imports.dart';

class ChangePasswordController extends GetxController {
  late TextEditingController currentPassword;
  late TextEditingController newPassword;
  var formKey = GlobalKey<FormState>();
  bool obscureTextCurrentPassword = true;
  bool obscureTextNewPassword = true;

  @override
  void onInit() {
    super.onInit();
    currentPassword = TextEditingController();
    newPassword = TextEditingController();
  }

  void changeObscureTextCurrentPassword() {
    obscureTextCurrentPassword = !obscureTextCurrentPassword;
    update();
  }

  void changeObscureTextNewPassword() {
    obscureTextNewPassword = !obscureTextNewPassword;
    update();
  }

  String? validatorEmail(String? email) {}

  String? validatorPassword(String? password) {}

  void performChangePassword() {}

  void _changePassword() {}
}
