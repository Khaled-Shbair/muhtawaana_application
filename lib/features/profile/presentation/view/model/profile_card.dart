import '/config/all_imports.dart';

class ProfileCard {
  final Function() onTap;
  final String name;
  final IconData icon;

  ProfileCard({
    required this.onTap,
    required this.icon,
    required this.name,
  });
}
