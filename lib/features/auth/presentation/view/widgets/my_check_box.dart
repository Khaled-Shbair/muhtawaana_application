import '/config/all_imports.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    required this.onTap,
    required this.isCheck,
    this.isSignUp = false,
    super.key,
  });

  final Function() onTap;
  final bool isCheck;
  final bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: ManagerColors.transparentColor,
      splashColor: ManagerColors.transparentColor,
      child: Row(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
              end: ManagerWidth.w10,
            ),
            height: ManagerHeight.h20,
            width: ManagerWidth.w20,
            decoration: BoxDecoration(
              color: isCheck
                  ? ManagerColors.primaryColor
                  : ManagerColors.transparentColor,
              borderRadius: BorderRadius.circular(ManagerRadius.r5),
              border: Border.all(
                color:
                    isCheck ? ManagerColors.transparentColor : ManagerColors.c2,
              ),
            ),
            child: isCheck
                ? const Icon(
                    Icons.check,
                    color: ManagerColors.whiteColor,
                    size: ManagerIconSize.s16,
                  )
                : null,
          ),
          isSignUp
              ? RichText(
                  text: TextSpan(
                    text: ManagerStrings.iHaveAgree,
                    style: termsAndConditionsInMyCheckBox(),
                    children: <TextSpan>[
                      TextSpan(
                        text: ManagerStrings.terms,
                        style: termsAndConditionsInMyCheckBox(true),
                      ),
                      TextSpan(
                        text: ManagerStrings.conditions,
                        style: termsAndConditionsInMyCheckBox(true),
                      ),
                    ],
                  ),
                )
              : Text(
                  ManagerStrings.rememberMe,
                  style: rememberMeInLoginScreen(),
                ),
        ],
      ),
    );
  }
}
