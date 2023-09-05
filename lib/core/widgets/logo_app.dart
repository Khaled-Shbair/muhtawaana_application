import '/config/all_imports.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ManagerHeight.h120,
      width: ManagerWidth.w120,
      alignment: AlignmentDirectional.center,
      decoration: const BoxDecoration(
        color: ManagerColors.primaryColor,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        ManagerAssets.logo,
        height: ManagerHeight.h77,
        width: ManagerWidth.w102,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
