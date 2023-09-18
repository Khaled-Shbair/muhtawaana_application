import '/config/all_imports.dart';

class ButtonMoveBetweenImages extends StatelessWidget {
  const ButtonMoveBetweenImages({
    required this.visible,
    required this.onPressed,
    this.isPrevious = false,
    super.key,
  });

  final bool visible;
  final bool isPrevious;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      maintainState: true,
      maintainSize: true,
      maintainSemantics: true,
      maintainInteractivity: true,
      maintainAnimation: true,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          isPrevious ? Icons.arrow_back_ios_new : Icons.arrow_forward_ios,
          color: ManagerColors.blackColor,
        ),
      ),
    );
  }
}
