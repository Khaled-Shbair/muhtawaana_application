import '/config/all_imports.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    required this.controller,
    required this.hintText,
    this.validator,
    this.prefixIcon,
    this.prefixImageIcon,
    this.changeObscureText,
    this.maxLength,
    this.counterText,
    this.keyboardType = TextInputType.emailAddress,
    this.obscureText = false,
    this.isPassword = false,
    super.key,
  });

  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final IconData? prefixIcon;
  final String? prefixImageIcon;
  final String? counterText;
  final String hintText;
  final bool obscureText;
  final bool isPassword;
  final int? maxLength;
  final Function()? changeObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: ManagerColors.primaryColor,
      maxLength:maxLength ,
      style: textStyleOfMainTextField(ManagerColors.blackColor),
      decoration: InputDecoration(
        filled: true,
        counterText: counterText,
        fillColor: ManagerColors.whiteColor,
        contentPadding: EdgeInsetsDirectional.only(
          top: ManagerHeight.h14,
          bottom: ManagerHeight.h14,
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: changeObscureText,
                icon: Icon(
                  !obscureText ? Icons.visibility_off : Icons.visibility,
                  color: ManagerColors.primaryColor,
                ),
              )
            : null,
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w16,
            end: ManagerWidth.w10,
          ),
          child: prefixImageIcon == null
              ? Icon(
                  prefixIcon,
                  color: ManagerColors.c2,
                )
              : SvgPicture.asset(
                  prefixImageIcon!,
                  height: ManagerHeight.h16,
                  width: ManagerWidth.w16,
                ),
        ),
        hintText: hintText,
        hintStyle: textStyleOfMainTextField(),
        enabledBorder: _outlineInputBorder(),
        errorBorder: _outlineInputBorder(ManagerColors.redColor),
        border: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
      ),
    );
  }
}

InputBorder _outlineInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(ManagerRadius.r5),
    borderSide: BorderSide(
      width: 1,
      color: color ?? ManagerColors.primaryColor,
    ),
  );
}
