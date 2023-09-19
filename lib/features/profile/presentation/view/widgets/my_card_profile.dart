import '/config/all_imports.dart';

class MyCardProfile extends StatelessWidget {
  const MyCardProfile({
    required this.onTap,
    required this.name,
    required this.icon,
    super.key,
  });

  final Function() onTap;
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      splashColor: ManagerColors.transparentColor,
      leading: Icon(
        icon,
        color: ManagerColors.c2,
        size: ManagerIconSize.s24,
      ),
      title: Text(
        name,
        style: nameOfMyCardProfileWidget(),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: ManagerIconSize.s16,
        color: ManagerColors.c2,
      ),
    );
  }
}
