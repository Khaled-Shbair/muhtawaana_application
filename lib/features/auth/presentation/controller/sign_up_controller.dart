import '/config/all_imports.dart';

class SignUpController extends GetxController
    with ShowLoadingDialog, ShowSnackBar {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController phone;
  late TextEditingController name;
  final SignUpUseCase _useCase = instance<SignUpUseCase>();

  var formKey = GlobalKey<FormState>();
  bool obscureTextPassword = true;
  bool obscureTextConfirmPassword = true;
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

  void performSingUp(context) {
    if (_checkData()) {
      if (phone.text.length == 10) {
        if (password.text == confirmPassword.text) {
          if (policyPrivacy) {
            _singUp(context);
          } else {
            showSnackBar(ManagerStrings.pleaseAcceptTermsAndConditions, true);
          }
        } else {
          showSnackBar(ManagerStrings.passwordsDoNotMatch, true);
        }
      } else {
        showSnackBar(ManagerStrings.phoneNumberMustBeNumbers, true);
      }
    } else {
      showSnackBar(ManagerStrings.pleaseEnterRequiredData, true);
    }
  }

  bool _checkData() {
    if (email.text.isNotEmpty &&
        name.text.isNotEmpty &&
        phone.text.isNotEmpty &&
        password.text.isNotEmpty &&
        confirmPassword.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> _singUp(context) async {
    showLoadingDialog(context);
    (await _useCase.execute(
      SignUpBaseUseCaseInput(
        name: name.text.toString(),
        phone: phone.text.toString(),
        email: email.text.toString(),
        password: password.text.toString(),
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
        Get.offAllNamed(Routes.loginScreen);
      },
    );
  }

  void backButton() {
    finishSignUp();
  }
}
