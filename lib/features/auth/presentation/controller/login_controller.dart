import '/config/all_imports.dart';

class LoginController extends GetxController
    with ShowLoadingDialog, ShowSnackBar {
  late TextEditingController email;
  late TextEditingController password;
  late TapGestureRecognizer recognizer;
  var formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool rememberMe = true;
  final LoginUseCase _useCase = instance<LoginUseCase>();
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();

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

  void performLogin(context) {
    if (_checkData()) {
      _login(context);
    } else {
      showSnackBar(ManagerStrings.pleaseEnterEmailAndPassword, true);
    }
  }

  bool _checkData() => (email.text.isNotEmpty && password.text.isNotEmpty);

  void _login(context) async {
    showLoadingDialog(context);
    (await _useCase.execute(
      LoginBaseUseCaseInput(
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
        if (rememberMe) {
          await _sharedPreferences.setUser(r.data);
        }
        Get.back();
        await Get.offAllNamed(Routes.mainScreen);
      },
    );
  }

  void loginByFaceBook() {}

  void loginByGoogle() {}
}
