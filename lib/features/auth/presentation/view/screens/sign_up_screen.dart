import '/config/all_imports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return StructureOfLoginAndSignUp(
          formKey: controller.formKey,
          titleAppBar: ManagerStrings.signUp,
          onPressed: () => controller.backButton(),
          children: [
            SvgPicture.asset(
              ManagerAssets.imageSignUpScreen,
              height: ManagerHeight.h136,
              width: ManagerWidth.w141,
            ),
            SizedBox(height: ManagerHeight.h24),
            MainTextField(
              controller: controller.name,
              prefixIcon: Icons.person,
              hintText: ManagerStrings.fullName,
            ),
            SizedBox(height: ManagerHeight.h14),
            MainTextField(
              controller: controller.phone,
              prefixIcon: Icons.phone,
              maxLength: AppConstants.maxLengthOfPhoneNumber,
              hintText: ManagerStrings.phone,
              keyboardType: TextInputType.phone,
              counterText: '',
            ),
            SizedBox(height: ManagerHeight.h14),
            MainTextField(
              controller: controller.email,
              prefixIcon: Icons.mail,
              hintText: ManagerStrings.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: ManagerHeight.h14),
            MainTextField(
              controller: controller.password,
              prefixImageIcon: ManagerAssets.lockIcon,
              hintText: ManagerStrings.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: controller.obscureTextPassword,
              isPassword: true,
              changeObscureText: controller.changeObscureTextPassword,
            ),
            SizedBox(height: ManagerHeight.h20),
            MainTextField(
              controller: controller.confirmPassword,
              prefixImageIcon: ManagerAssets.lockIcon,
              hintText: ManagerStrings.confirmPassword,
              keyboardType: TextInputType.visiblePassword,
              obscureText: controller.obscureTextConfirmPassword,
              isPassword: true,
              changeObscureText: controller.changeObscureTextConfirmPassword,
            ),
            SizedBox(height: ManagerHeight.h10),
            MyCheckBox(
              onTap: controller.changePolicyPrivacy,
              isCheck: controller.policyPrivacy,
              isSignUp: true,
            ),
            SizedBox(height: ManagerHeight.h24),
            MainButton(
              text: ManagerStrings.signUp,
              onPressed: () => controller.performSingUp(context),
            ),
          ],
        );
      },
    );
  }
}
