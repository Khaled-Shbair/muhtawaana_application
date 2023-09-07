import '/config/all_imports.dart';

class StructureOfLoginAndSignUp extends StatelessWidget {
  const StructureOfLoginAndSignUp({
    required this.formKey,
    required this.titleAppBar,
    required this.children,
    super.key,
  });

  final Key formKey;
  final String titleAppBar;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: AppConstants.elevationAppBar,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(
            ManagerAssets.arrowBackIcon,
          ),
        ),
        title: Text(
          titleAppBar.toUpperCase(),
          style: TextStyle(
            color: ManagerColors.blackColor,
            fontSize: ManagerFontSize.s15,
            fontWeight: ManagerFontWeight.w500,
            fontFamily: ManagerFontFamily.inter,
          ),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          SvgPicture.asset(
            ManagerAssets.topLeftCorner,
            width: double.infinity,
            height: ManagerHeight.h355,
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: ManagerWidth.w16,
                end: ManagerWidth.w16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
