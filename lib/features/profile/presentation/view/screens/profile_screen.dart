import '/config/all_imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ManagerHeight.h395,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: ManagerHeight.h355,
                      decoration: BoxDecoration(
                        color: ManagerColors.whiteColor,
                        image: DecorationImage(
                          image: NetworkImage(controller.userImage),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                        width: ManagerWidth.w238,
                        height: ManagerHeight.h80,
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: ManagerWidth.w7,
                          vertical: ManagerHeight.h7,
                        ),
                        decoration: const BoxDecoration(
                          color: ManagerColors.whiteColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Text(
                                controller.userName,
                                overflow: TextOverflow.ellipsis,
                                style: userNameInProfileScreen(),
                              ),
                            ),
                            SizedBox(height: ManagerHeight.h6),
                            SizedBox(
                              child: Text(
                                controller.userEmail,
                                overflow: TextOverflow.ellipsis,
                                style: emailInProfileScreen(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: ManagerWidth.w16,
                  end: ManagerWidth.w16,
                  bottom: ManagerHeight.h16,
                  top: ManagerHeight.h10,
                ),
                decoration: BoxDecoration(
                  color: ManagerColors.c15,
                  borderRadius: BorderRadius.circular(ManagerRadius.r10),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                        controller.profileCard.length,
                        (index) => MyCardProfile(
                          onTap: controller.profileCard[index].onTap,
                          name: controller.profileCard[index].name,
                          icon: controller.profileCard[index].icon,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
