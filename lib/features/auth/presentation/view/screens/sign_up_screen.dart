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
          children: [
            // SvgPicture.asset(
            //   ManagerAssets.logo,
            //   height: ManagerHeight.h120,
            //   width: ManagerWidth.w120,
            // ),
            SizedBox(height: ManagerHeight.h24),
            MainTextField(
              controller: controller.name,
              prefixIcon: Icons.person,
              hintText: ManagerStrings.fullName,
              validator: (value) => controller.validatorName(value),
            ),
            SizedBox(height: ManagerHeight.h14),
            MainTextField(
              controller: controller.phone,
              prefixIcon: Icons.phone,
              hintText: ManagerStrings.phone,
              keyboardType: TextInputType.phone,
              validator: (value) => controller.validatorPhone(value),
            ),

            SizedBox(height: ManagerHeight.h14),
            MainTextField(
              controller: controller.email,
              prefixIcon: Icons.mail,
              hintText: ManagerStrings.email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => controller.validatorEmail(value),
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
              validator: (value) => controller.validatorPassword(value),
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
              validator: (value) => controller.validatorConfirmPassword(value),
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
