import '/config/all_imports.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ManagerAssets.logo,
      height: ManagerHeight.h120,
      width: ManagerWidth.w120,
      filterQuality: FilterQuality.high,

    );
  }
}
