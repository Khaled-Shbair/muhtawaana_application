import '/config/all_imports.dart';

class MyBackIcon extends StatelessWidget {
  const MyBackIcon({this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
        Get.back();
      },
      icon: SvgPicture.asset(
        ManagerAssets.arrowBackIcon,
        height: ManagerHeight.h14,
        width: ManagerWidth.w13,
      ),
    );
  }
}
