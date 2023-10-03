import '/config/all_imports.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    required this.sliders,
    this.loading = false,
    super.key,
  });

  final List<BannerDataHomeModel> sliders;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    if (loading == false && sliders.isNotEmpty) {
      return CarouselSlider(
        items: sliders.map((e) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(ManagerRadius.r10),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: e.image,
              filterQuality: FilterQuality.high,
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
    } else {
      return MainShimmer(
        height: ManagerHeight.h205,
        width: ManagerWidth.w283,
      );
    }
  }
}
