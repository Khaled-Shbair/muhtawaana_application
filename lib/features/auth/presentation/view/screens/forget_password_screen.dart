import '/config/all_imports.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetPasswordController>(
      builder: (controller) {
        return StructureOfLoginAndSignUp(
          formKey: controller.formKey,
          titleAppBar: ManagerStrings.forgetPassword,
          onPressed: () => controller.backButton(),
          children: [
            Text(
              '${ManagerStrings.itWillBeAddedLater}${String.fromCharCodes(Runes('\u{1f607}'))}',
              style: TextStyle(
                color: ManagerColors.blackColor,
                fontFamily: ManagerFontFamily.roboto,
                fontWeight: ManagerFontWeight.w400,
                fontSize: ManagerFontSize.s18,
              ),
            ),
          ],
        );
      },
    );
  }
}
