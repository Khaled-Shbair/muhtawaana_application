import '/config/all_imports.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<AuthController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: ManagerColors.whiteColor,
            resizeToAvoidBottomInset: true,
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsetsDirectional.only(
                start: ManagerWidth.w16,
                end: ManagerWidth.w16,
                top: ManagerHeight.h16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: ManagerWidth.w40,
                      end: ManagerWidth.w40,
                    ),
                    child: SizedBox(
                      height: ManagerHeight.h76,
                      child: Text(
                        ManagerStrings.authScreen,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: ManagerFontFamily.inter,
                          fontSize: ManagerFontSize.s17,
                          fontWeight: ManagerFontWeight.w500,
                          color: ManagerColors.c5,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      ManagerAssets.imageAuthScreen,
                      height: ManagerHeight.h324,
                      width: ManagerWidth.w305,
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top: ManagerHeight.h4,
                      bottom: ManagerHeight.h4,
                      start: ManagerWidth.w16,
                      end: ManagerWidth.w16,
                    ),
                    decoration: BoxDecoration(
                      color: ManagerColors.c6,
                      borderRadius: BorderRadius.circular(ManagerRadius.r5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: MainButton(
                            text: ManagerStrings.login,
                            onPressed: () async {
                              await Get.toNamed(Routes.loginScreen);
                            },
                            height: ManagerHeight.h38,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w8),
                        Expanded(
                          child: MainButton(
                            text: ManagerStrings.signUp,
                            colorText: ManagerColors.blackColor,
                            color: ManagerColors.transparentColor,
                            onPressed: () async {
                              await Get.toNamed(Routes.signUpScreen);
                            },
                            height: ManagerHeight.h38,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h80),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
