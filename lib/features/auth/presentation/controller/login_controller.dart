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
  final AppSettingsSharedPreferences _sharedPref =
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
          var dataUser = r.data;
          _sharedPref.setUser(
            _dataUserModel(
              points: dataUser.points,
              id: dataUser.id,
              phone: dataUser.phone,
              credit: dataUser.credit,
              email: dataUser.email,
              name: dataUser.name,
              image: dataUser.image,
              token: dataUser.token,
            ),
          );
        }
        await _sharedPref.setLoggedIn(true);
        Get.back();
        await Get.offAllNamed(Routes.mainScreen);
      },
    );
  }

  void loginByFaceBook() {}

  void loginByGoogle() {}

  DataUserModel _dataUserModel({
    required String token,
    required String name,
    required String image,
    required String email,
    required String phone,
    required int credit,
    required int id,
    required int points,
  }) {
    return DataUserModel(
      token: token,
      name: name,
      image: image,
      email: email,
      credit: credit,
      phone: phone,
      id: id,
      points: points,
    );
  }

  void backButton() {
    finishLogin();
  }

/////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////
}
