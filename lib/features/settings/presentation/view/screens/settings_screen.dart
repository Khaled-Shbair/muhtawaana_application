import '/config/all_imports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(
            text: ManagerStrings.settings,
            appearLeading: true,
            onPressed: () => controller.backButton(),
          ),
          body: Padding(
            padding: EdgeInsetsDirectional.only(
              start: ManagerWidth.w20,
              end: ManagerWidth.w20,
              top: ManagerHeight.h14,
            ),
            child: Column(
              children: [
                MySwitchButton(
                  title: ManagerStrings.notifications,
                  subTitle: controller.subTitleNotifications,
                  value: controller.notifications,
                  onChanged: (value) => controller.changeNotifications(),
                ),
                MySwitchButton(
                  title: ManagerStrings.englishLanguage,
                  subTitle: controller.subTitleEnglishLanguage,
                  value: controller.englishLanguage,
                  onChanged: (value) => controller.changeEnglishLanguage(),
                ),
                MySwitchButton(
                  title: ManagerStrings.darkMode,
                  subTitle: controller.subTitleDarkMode,
                  value: controller.darkMode,
                  onChanged: (value) => controller.changeDarkMode(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
