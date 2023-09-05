import '/config/all_imports.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: ManagerColors.whiteColor,
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: EdgeInsetsDirectional.only(
              start: ManagerWidth.w16,
              end: ManagerWidth.w16,
              top: ManagerHeight.h60,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        );
      },
    );
  }
}
