import '/config/all_imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return StructureOfLoginAndSignUp(
          formKey: controller.formKey,
          titleAppBar: ManagerStrings.login,
          children: [
            SvgPicture.asset(
              ManagerAssets.logo,
              height: ManagerHeight.h120,
              width: ManagerWidth.w120,
            ),
            SizedBox(height: ManagerHeight.h16),
            Text(ManagerStrings.login.toUpperCase(), style: titleLoginScreen()),
            SizedBox(height: ManagerHeight.h24),
            MainTextField(
              controller: controller.email,
              prefixIcon: Icons.mail,
              hintText: ManagerStrings.email,
            ),
            SizedBox(height: ManagerHeight.h20),
            MainTextField(
              controller: controller.password,
              prefixImageIcon: ManagerAssets.lockIcon,
              hintText: ManagerStrings.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: controller.obscureText,
              isPassword: true,
              changeObscureText: controller.changeObscureText,
            ),
            SizedBox(height: ManagerHeight.h10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCheckBox(
                  onTap: controller.changeRememberMe,
                  isCheck: controller.rememberMe,
                ),
                InkWell(
                  onTap: () => Get.toNamed(Routes.forgetPasswordScreen),
                  splashColor: ManagerColors.transparentColor,
                  highlightColor: ManagerColors.transparentColor,
                  child: Text(
                    ManagerStrings.forgetPasswordQuestion,
                    style: TextStyle(
                        fontSize: ManagerFontSize.s13,
                        fontFamily: ManagerFontFamily.inter,
                        fontWeight: ManagerFontWeight.w500,
                        color: ManagerColors.c5),
                  ),
                ),
              ],
            ),
            SizedBox(height: ManagerHeight.h46),
            MainButton(
              text: ManagerStrings.login,
              onPressed: () => controller.performLogin(context),
            ),
            SizedBox(height: ManagerHeight.h10),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: ManagerColors.c7,
                    height: AppConstants.heightOfDividerInLoginScreen,
                    endIndent: ManagerWidth.w7,
                    indent: ManagerWidth.w2,
                  ),
                ),
                Text(
                  ManagerStrings.or.toUpperCase(),
                  style: styleOfORTextInLoginScreen(),
                ),
                Expanded(
                  child: Divider(
                    color: ManagerColors.c7,
                    height: AppConstants.heightOfDividerInLoginScreen,
                    indent: ManagerWidth.w7,
                    endIndent: ManagerWidth.w2,
                  ),
                ),
              ],
            ),
            SizedBox(height: ManagerHeight.h10),
            MainButton(
              onPressed: controller.loginByGoogle,
              color: ManagerColors.c9,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(
                      end: ManagerWidth.w24,
                    ),
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: ManagerWidth.w4,
                      vertical: ManagerHeight.h4,
                    ),
                    height: ManagerHeight.h38,
                    width: ManagerWidth.w38,
                    decoration: const BoxDecoration(
                      color: ManagerColors.whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      ManagerAssets.googleIcon,
                      height: ManagerHeight.h24,
                      width: ManagerWidth.w24,
                    ),
                  ),
                  Text(
                    ManagerStrings.loginWithGoogle,
                    style: loginByFacebookOrGoogleInLoginScreen(),
                  ),
                ],
              ),
            ),
            SizedBox(height: ManagerHeight.h10),
            MainButton(
              onPressed: controller.loginByFaceBook,
              color: ManagerColors.c9,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(
                      end: ManagerWidth.w24,
                    ),
                    height: ManagerHeight.h38,
                    width: ManagerWidth.w38,
                    decoration: const BoxDecoration(
                      color: ManagerColors.whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.facebook,
                      size: ManagerIconSize.s32,
                    ),
                  ),
                  Text(
                    ManagerStrings.loginWithFacebook,
                    style: loginByFacebookOrGoogleInLoginScreen(),
                  ),
                ],
              ),
            ),
            SizedBox(height: ManagerHeight.h30),
            RichText(
              text: TextSpan(
                text: ManagerStrings.doNotHaveAnyAccount,
                style: TextStyle(
                  color: ManagerColors.c5,
                  fontFamily: ManagerFontFamily.inter,
                  fontWeight: ManagerFontWeight.w500,
                  fontSize: ManagerFontSize.s15,
                ),
                children: [
                  TextSpan(
                    text: ' ${ManagerStrings.signUp}',
                    recognizer: controller.recognizer,
                    style: TextStyle(
                      color: ManagerColors.primaryColor,
                      fontFamily: ManagerFontFamily.inter,
                      fontWeight: ManagerFontWeight.w600,
                      fontSize: ManagerFontSize.s15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
