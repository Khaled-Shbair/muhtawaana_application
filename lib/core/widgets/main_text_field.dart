import '/config/all_imports.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.validator,
    this.keyboardType = TextInputType.emailAddress,
    super.key,
  });

  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: ManagerColors.primaryColor,
      style: textStyleOfMainTextField(ManagerColors.blackColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: ManagerColors.whiteColor,
        contentPadding: EdgeInsetsDirectional.only(
          top: ManagerHeight.h14,
          bottom: ManagerHeight.h14,
        ),
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w16,
            end: ManagerWidth.w10,
          ),
          child: Icon(
            prefixIcon,
            color: ManagerColors.c2,
          ),
        ),
        hintText: hintText,
        hintStyle: textStyleOfMainTextField(),
        enabledBorder: _outlineInputBorder(),
        errorBorder: _outlineInputBorder(ManagerColors.errorColor),
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
