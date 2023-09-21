import '/config/all_imports.dart';

mixin ShowLoadingDialog {
  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: ManagerColors.primaryColor,
            backgroundColor: ManagerColors.whiteColor,
          ),
        );
      },
    );
  }
}
