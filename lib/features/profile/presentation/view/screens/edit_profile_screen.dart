import '/config/all_imports.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
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
                    SafeArea(
                      child: Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: ManagerWidth.w20,
                            end: ManagerWidth.w20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MainButton(
                                onPressed: () => controller.backButton(),
                                height: ManagerHeight.h35,
                                width: ManagerWidth.w35,
                                radius: ManagerRadius.r5,
                                color: ManagerColors.c27,
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: ManagerIconSize.s20,
                                  color: ManagerColors.c2,
                                ),
                              ),
                              MainButton(
                                height: ManagerHeight.h35,
                                width: ManagerWidth.w57,
                                radius: ManagerRadius.r10,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        surfaceTintColor:
                                            ManagerColors.whiteColor,
                                        title: Text(
                                          ManagerStrings.chooseTheImageFrom,
                                          style:
                                              titleAlertDialogInEditProfileScreen(),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.only(
                                          start: ManagerWidth.w10,
                                          end: ManagerWidth.w10,
                                          top: ManagerHeight.h14,
                                          bottom: ManagerHeight.h14,
                                        ),
                                        actions: [
                                          MyButtonOfChooseImage(
                                            onPressed: () =>
                                                controller.cameraButton(),
                                            name: ManagerStrings.camera,
                                            icon: Icons.camera_alt_outlined,
                                          ),
                                          SizedBox(height: ManagerHeight.h10),
                                          MyButtonOfChooseImage(
                                            onPressed: () =>
                                                controller.galleryButton(),
                                            name: ManagerStrings.gallery,
                                            icon: Icons.image_outlined,
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: const Icon(
                                  Icons.camera_alt,
                                  size: ManagerIconSize.s24,
                                  color: ManagerColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
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
                  top: ManagerHeight.h20,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MainTextField(
                          controller: controller.name,
                          hintText: controller.userName,
                          prefixIcon: Icons.person,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: ManagerHeight.h14),
                        MainTextField(
                          controller: controller.email,
                          hintText: controller.userEmail,
                          prefixIcon: Icons.mail,
                        ),
                        SizedBox(height: ManagerHeight.h14),
                        MainTextField(
                          controller: controller.phone,
                          hintText: controller.userPhone,
                          prefixIcon: Icons.phone,
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(height: ManagerHeight.h26),
                        MainButton(
                          onPressed: () =>
                              controller.performEditProfile(context),
                          text: ManagerStrings.editProfile,
                        ),
                      ],
                    ),
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
