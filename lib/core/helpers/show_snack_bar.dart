import '/config/all_imports.dart';

mixin ShowSnackBar {
  showSnackBar(String message, [bool error = false]) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor:
          error ? ManagerColors.errorColor : ManagerColors.successColor,
    );
  }
}
