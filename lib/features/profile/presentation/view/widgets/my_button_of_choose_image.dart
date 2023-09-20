import '/config/all_imports.dart';

class MyButtonOfChooseImage extends StatelessWidget {
  const MyButtonOfChooseImage({
    required this.onPressed,
    required this.icon,
    required this.name,
    super.key,
  });

  final Function() onPressed;
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: ManagerColors.whiteColor,
            size: ManagerIconSize.s24,
          ),
          SizedBox(
            width: ManagerWidth.w10,
          ),
          Text(
            name,
            style: textStyleOfMainButton(),
          ),
        ],
      ),
    );
  }
}
