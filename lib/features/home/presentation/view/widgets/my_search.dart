import '/config/all_imports.dart';

class MySearch extends StatelessWidget {
  const MySearch({
    this.formKey,
    this.controller,
    this.onChanged,
    this.isHome = false,
    this.autofocus = false,
    super.key,
  });

  final TextEditingController? controller;
  final Key? formKey;
  final bool isHome;
  final bool autofocus;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        height: ManagerHeight.h48,
        margin: EdgeInsetsDirectional.only(
          start: ManagerWidth.w16,
          end: ManagerWidth.w16,
        ),
        padding: EdgeInsetsDirectional.only(
          top: ManagerHeight.h8,
          bottom: ManagerHeight.h8,
          start: ManagerWidth.w16,
          end: ManagerWidth.w4,
        ),
        decoration: BoxDecoration(
          color: ManagerColors.whiteColor,
          borderRadius: BorderRadius.circular(ManagerRadius.r8),
          border: Border.all(
            color: ManagerColors.c22,
            width: 0.5,
          ),
        ),
        child: InkWell(
          onTap: () async {
            if (isHome) {
              await Get.toNamed(Routes.searchProductScreen);
            }
          },
          highlightColor: ManagerColors.transparentColor,
          splashColor: ManagerColors.transparentColor,
          child: Row(
            children: [
              SvgPicture.asset(
                ManagerAssets.searchIcon,
                width: ManagerWidth.w24,
                height: ManagerHeight.h24,
              ),
              SizedBox(width: ManagerWidth.w10),
              Expanded(
                child: TextFormField(
                  enabled: !isHome,
                  autofocus: autofocus,
                  onChanged: onChanged,
                  keyboardType: TextInputType.text,
                  controller: controller,
                  style: styleOfSearchInMySearch(ManagerColors.blackColor),
                  decoration: InputDecoration(
                    hintText: ManagerStrings.search,
                    hintStyle: styleOfSearchInMySearch(),
                    border:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    disabledBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    errorBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedErrorBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
