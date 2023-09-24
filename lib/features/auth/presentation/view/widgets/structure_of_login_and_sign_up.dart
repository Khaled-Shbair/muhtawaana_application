import '/config/all_imports.dart';

class StructureOfLoginAndSignUp extends StatelessWidget {
  const StructureOfLoginAndSignUp({
    required this.formKey,
    required this.titleAppBar,
    required this.children,
    this.onPressed,
    super.key,
  });

  final Key formKey;
  final String titleAppBar;
  final List<Widget> children;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.whiteColor,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: AppConstants.elevationAppBar,
        leading: MyBackIcon(onPressed: onPressed),
        title: Text(
          titleAppBar.toUpperCase(),
          style: titleAppBarInAuthScreen(),
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
