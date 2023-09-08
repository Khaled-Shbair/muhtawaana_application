import '/config/all_imports.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ManagerColors.whiteColor,
      appBar: AppBar(
        title: Text(
          ManagerStrings.changePassword,
          style: titleAppBarInAuthScreen(),
        ),
        leading: const MyBackIcon(),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SvgPicture.asset(
            ManagerAssets.bottomLeftCorner,
            height: ManagerHeight.h293,
            width: double.infinity,
          ),
          Column(
            children: [
              SizedBox(height: ManagerHeight.h24),
              SvgPicture.asset(
                ManagerAssets.changePasswordImage,
                height: ManagerHeight.h200,
                width: ManagerWidth.w230,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: ManagerWidth.w20,
                  end: ManagerWidth.w16,
                  top: ManagerHeight.h36,
                ),
                padding: EdgeInsetsDirectional.only(
                  start: ManagerWidth.w24,
                  end: ManagerWidth.w24,
                  top: ManagerHeight.h24,
                  bottom: ManagerHeight.h30,
                ),
                decoration: BoxDecoration(
                  color: ManagerColors.whiteColor,
                  borderRadius: BorderRadius.circular(ManagerRadius.r30),
                  boxShadow: const [
                    BoxShadow(
                      color: ManagerColors.shadow,
                      offset: Offset(0, 10),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: GetBuilder<ChangePasswordController>(
                  builder: (controller) {
                    return Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ManagerStrings.enterCurrentPassword,
                            style:
                                textStyleOfNamedFiledInChangePasswordScreen(),
                          ),
                          SizedBox(height: ManagerHeight.h10),
                          MainTextField(
                            controller: controller.currentPassword,
                            hintText: '',
                            isPassword: true,
                            obscureText: controller.obscureTextCurrentPassword,
                            keyboardType: TextInputType.visiblePassword,
                            changeObscureText:
                                controller.changeObscureTextCurrentPassword,
                            prefixImageIcon: ManagerAssets.lockIcon,
                          ),
                          SizedBox(height: ManagerHeight.h16),
                          Text(
                            ManagerStrings.enterNewPassword,
                            style:
                                textStyleOfNamedFiledInChangePasswordScreen(),
                          ),
                          SizedBox(height: ManagerHeight.h10),
                          MainTextField(
                            controller: controller.newPassword,
                            hintText: '',
                            isPassword: true,
                            prefixImageIcon: ManagerAssets.lockIcon,
                            obscureText: controller.obscureTextNewPassword,
                            keyboardType: TextInputType.visiblePassword,
                            changeObscureText:
                                controller.changeObscureTextNewPassword,
                          ),
                          SizedBox(height: ManagerHeight.h30),
                          MainButton(
                            onPressed: controller.performChangePassword,
                            text: ManagerStrings.submit,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
