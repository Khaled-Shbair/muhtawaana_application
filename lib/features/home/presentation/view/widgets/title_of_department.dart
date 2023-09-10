import '/config/all_imports.dart';

class TitleOfDepartment extends StatelessWidget {
  const TitleOfDepartment({
    required this.onTap,
    required this.name,
    super.key,
  });

  final Function() onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: ManagerWidth.w16,
        end: ManagerWidth.w16,
        top: ManagerHeight.h24,
        bottom: ManagerHeight.h10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: styleOfTitleOfDepartmentInHomeScreen(),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              ManagerStrings.more,
              style: buttonMoreSectionsInTitleOfDepartmentOfHomeScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
