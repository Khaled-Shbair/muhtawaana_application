import '/config/all_imports.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    required this.title,
    required this.subTitle,
    required this.image,
    super.key,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w74,
            end: ManagerWidth.w74,
          ),
          child: SizedBox(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: titleOnBoarding(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w30,
            end: ManagerWidth.w30,
            top: ManagerHeight.h16,
          ),
          child: SizedBox(
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: subTitleOnBoarding(),
            ),
          ),
        ),
        Expanded(child: SvgPicture.asset(image)),
      ],
    );
  }
}
