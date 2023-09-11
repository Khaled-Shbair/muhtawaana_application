import '../../config/all_imports.dart';

class MainShimmer extends StatelessWidget {
  const MainShimmer({
    this.width,
    this.radius,
    this.height,
    super.key,
  });

  final double? width;
  final double? height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ManagerColors.baseColorShimmer,
      highlightColor: ManagerColors.highlightColorShimmer,
      child: Container(
        width: width ?? ManagerWidth.w78,
        height: height,
        decoration: BoxDecoration(
          color: ManagerColors.containerColorOfShimmer,
          borderRadius: BorderRadius.circular(radius ?? ManagerRadius.r10),
        ),
      ),
    );
  }
}
