import '/config/all_imports.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    required this.sliders,
    super.key,
  });

  final List<BannerDataHomeModel> sliders;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliders.map((e) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(ManagerRadius.r10),
          child: Image(
            fit: BoxFit.fill,
            image: NetworkImage(e.image),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: ManagerHeight.h205,
        initialPage: AppConstants.initialPageInSliderInHomeScreen,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
        viewportFraction: AppConstants.viewportFractionInSliderInHomeScreen,
      ),
    );
  }
}
