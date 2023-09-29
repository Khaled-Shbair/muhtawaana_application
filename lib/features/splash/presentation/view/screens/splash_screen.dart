import '/config/all_imports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              ManagerAssets.backgroundSplash,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
            const LogoApp(),
          ],
        ),
      ),
    );
  }
}
