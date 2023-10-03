import '/config/all_imports.dart';

class MySwitchButton extends StatelessWidget {
  const MySwitchButton({
    required this.title,
    required this.subTitle,
    required this.onChanged,
    required this.value,
    super.key,
  });

  final String title;
  final String subTitle;
  final Function(bool value)? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      value: value,
      contentPadding: EdgeInsetsDirectional.zero,
      tileColor: ManagerColors.transparentColor,
      overlayColor: MaterialStateProperty.all(Colors.yellow),
      dense: false,
      shape: Border.all(style: BorderStyle.none),
      title: Text(title, style: titleInMySwitchButton()),
      subtitle: Text(subTitle, style: subTitleInMySwitchButton()),
      applyCupertinoTheme: true,
      thumbColor: MaterialStateProperty.all(Colors.white),
      hoverColor: ManagerColors.transparentColor,
      onChanged: onChanged,
      trackOutlineColor:
          MaterialStateProperty.all(ManagerColors.transparentColor),
      activeTrackColor: ManagerColors.primaryColor,
      inactiveTrackColor: ManagerColors.c29,
      splashRadius: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
