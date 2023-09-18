import '/config/all_imports.dart';

class NoData extends StatelessWidget {
  const NoData({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: ManagerFontSize.s17,
          fontWeight: ManagerFontWeight.w400,
          fontFamily: ManagerFontFamily.roboto,
          color: ManagerColors.textGeryColor,
        ),
      ),
    );
  }
}
