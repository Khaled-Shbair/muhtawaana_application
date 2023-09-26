import '/config/all_imports.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: ManagerWidth.w35,
        end: ManagerWidth.w35,
        top: ManagerHeight.h70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ManagerAssets.cartEmpty,
            height: ManagerHeight.h274,
            width: ManagerWidth.w248,
          ),
          SizedBox(height: ManagerHeight.h70),
          Text(
            ManagerStrings.yourCartIsEmpty.toUpperCase(),
            style: titleEmptyInCartScreen(),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
              top: ManagerHeight.h40,
              start: ManagerWidth.w24,
              end: ManagerWidth.w24,
            ),
            child: Text(
              ManagerStrings.looksLikeYouHaveNotMadeYourOrderYet,
              textAlign: TextAlign.center,
              style: subTitleEmptyInCartScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
