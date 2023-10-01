import '/config/all_imports.dart';

class NotificationsScreens extends StatelessWidget {
  const NotificationsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationsController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(
            text: ManagerStrings.notifications,
            foregroundColor: false,
          ),
          body: Center(
            child: Text(
              'No Notifications',
              style: TextStyle(
                fontSize: ManagerFontSize.s20,
                color: ManagerColors.blackColor,
                fontWeight: ManagerFontWeight.w500,
                fontFamily: ManagerFontFamily.roboto,
              ),
            ),
          ),
        );
      },
    );
  }
}
