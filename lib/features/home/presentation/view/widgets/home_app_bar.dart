import '/config/all_imports.dart';

AppBar homeAppBar({
  required String imageUser,
  required String nameUser,
  required Function() onPressed,
}) {
  return AppBar(
    toolbarHeight: ManagerHeight.h60,
    leadingWidth: ManagerWidth.w65,
    automaticallyImplyLeading: false,
    leading: Padding(
      padding: EdgeInsetsDirectional.only(start: ManagerWidth.w16),
      child: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(imageUser),
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi', style: hiUserNameInHomeScreen()),
        SizedBox(
          width: ManagerWidth.w185,
          child: Text(
            nameUser,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: hiUserNameInHomeScreen(),
          ),
        ),
      ],
    ),
    titleSpacing: ManagerWidth.w10,
    centerTitle: false,
    surfaceTintColor: Colors.white,
    actions: [
      MainButton(
        height: ManagerHeight.h30,
        radius: ManagerRadius.r10,
        width: ManagerWidth.w84,
        end: ManagerWidth.w16,
        onPressed: onPressed,
        color: ManagerColors.c13,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ManagerStrings.shop,
              style: TextStyle(
                color: ManagerColors.blackColor,
                fontSize: ManagerFontSize.s17,
                fontWeight: ManagerFontWeight.w500,
                fontFamily: ManagerFontFamily.roboto,
              ),
            ),
            SizedBox(width: ManagerWidth.w2),
            const Icon(
              Icons.shopping_cart,
              color: ManagerColors.c2,
            ),
          ],
        ),
      ),
    ],
  );
}
