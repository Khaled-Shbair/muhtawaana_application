import '/config/all_imports.dart';

class ChangePasswordController extends GetxController
    with ShowLoadingDialog, ShowSnackBar {
  final ChangePasswordUseCase _useCase = instance<ChangePasswordUseCase>();
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

  @override
  void onClose() {
    currentPassword.dispose();
    newPassword.dispose();
    super.onClose();
  }

  void changeObscureTextCurrentPassword() {
    obscureTextCurrentPassword = !obscureTextCurrentPassword;
    update();
  }

  void changeObscureTextNewPassword() {
    obscureTextNewPassword = !obscureTextNewPassword;
    update();
  }

  void performChangePassword() {
    if (currentPassword.text.isNotEmpty && newPassword.text.isNotEmpty) {
      _changePassword();
    } else {
      showSnackBar(ManagerStrings.pleaseEnterRequiredData, true);
    }
  }

  void _changePassword() async {
    showLoadingDialog(Get.context!);
    (await _useCase.execute(
      ChangePasswordBaseUseCaseInput(
        currentPassword: currentPassword.text.toString(),
        newPassword: newPassword.text.toString(),
      ),
    ))
        .fold(
      (l) {
        Get.back();
        showSnackBar(l.message, true);
      },
      (r) async {
        Get.back();
        showSnackBar(r.message);
        await Get.offAllNamed(Routes.settingsScreen);
      },
    );
  }
}
