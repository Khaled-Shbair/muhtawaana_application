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
        Text(
          title,
          style: titleOnBoarding(),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: ManagerWidth.w36,
            end: ManagerWidth.w36,
            top: ManagerHeight.h16,
          ),
          child: SizedBox(
            height: ManagerHeight.h76,
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
