import '/config/all_imports.dart';

class MyBackIcon extends StatelessWidget {
  const MyBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Get.back(),
      icon: SvgPicture.asset(
        ManagerAssets.arrowBackIcon,
        height: ManagerHeight.h14,
        width: ManagerWidth.w13,
      ),
    );
  }
}
