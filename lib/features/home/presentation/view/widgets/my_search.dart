import '/config/all_imports.dart';

class MySearch extends StatelessWidget {
  const MySearch({
    required this.selectCategory,
    this.formKey,
    this.controller,
    this.isHome = false,
    super.key,
  });

  final String selectCategory;
  final TextEditingController? controller;
  final Key? formKey;
  final bool isHome;

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
                  keyboardType: TextInputType.text,
                  controller: controller,
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
              Container(
                height: double.infinity,
                width: ManagerWidth.w1,
                color: Colors.black,
              ),
              SizedBox(width: ManagerWidth.w10),
              PopupMenuButton<String>(
                enabled: !isHome,
                padding: EdgeInsetsDirectional.zero,
                surfaceTintColor: ManagerColors.whiteColor,
                offset: const Offset(
                  AppConstants.xOffsetOfPopupMenuButtonInMySearchWidget,
                  AppConstants.yOffsetOfPopupMenuButtonInMySearchWidget,
                ),
                child: Row(
                  children: [
                    Text(
                      selectCategory,
                      style: styleOfSearchInMySearch(),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: ManagerColors.c23,
                      size: ManagerIconSize.s30,
                    )
                  ],
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text('sss'),
                    ),
                  ];
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
