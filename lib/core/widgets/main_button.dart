import '/config/all_imports.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    this.text = '',
    required this.onPressed,
    this.color = ManagerColors.primaryColor,
    this.height,
    this.radius,
    this.width,
    this.child,
    this.colorText,
    this.start = 0.0,
    this.end = 0.0,
    this.top = 0.0,
    this.bottom = 0.0,
    super.key,
  });

  final String text;
  final Function() onPressed;
  final Color color;
  final double? height;
  final double? width;
  final double? radius;
  final double start;
  final double end;
  final double top;
  final double bottom;
  final Color? colorText;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start,
        top: top,
        end: end,
        bottom: bottom,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          padding: EdgeInsetsDirectional.zero,
          minimumSize: Size(
            width ?? double.infinity,
            height ?? ManagerHeight.h48,
          ),
          shadowColor: ManagerColors.transparentColor,
          disabledForegroundColor: ManagerColors.transparentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? ManagerRadius.r5),
          ),
        ),
        child: child ?? Text(text, style: textStyleOfMainButton(colorText)),
      ),
    );
  }
}
