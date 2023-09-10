import '../../config/all_imports.dart';

class MainShimmer extends StatelessWidget {
  const MainShimmer({
    this.width,
    this.radius,
    super.key,
  });

  final double? width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ManagerColors.baseColorShimmer,
      highlightColor: ManagerColors.highlightColorShimmer,
      child: Container(
        width: width ?? ManagerWidth.w78,
        decoration: BoxDecoration(
          color: ManagerColors.containerColorOfShimmer,
          borderRadius: BorderRadius.circular(radius ?? ManagerRadius.r10),
        ),
      ),
    );
  }
}
