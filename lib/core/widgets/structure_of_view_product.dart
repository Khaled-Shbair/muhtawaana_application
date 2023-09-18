import '/config/all_imports.dart';

class StructureOfViewProduct extends StatelessWidget {
  const StructureOfViewProduct({
    required this.image,
    required this.name,
    required this.price,
    required this.discount,
    required this.oldPrice,
    required this.id,
    required this.inFavorites,
    required this.data,
    required this.buttonFavorites,
    super.key,
  });

  final String image;
  final String name;
  final double price;
  final double discount;
  final double oldPrice;
  final int id;
  final bool inFavorites;
  final ProductDataHomeModel data;
  final Function() buttonFavorites;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: ManagerColors.whiteColor,
        borderRadius: BorderRadius.circular(ManagerRadius.r10),
        boxShadow: const [
          BoxShadow(
            color: ManagerColors.shadow_1,
            offset: Offset(
              AppConstants.xOffsetOfHomeProductInHomeScreen,
              AppConstants.yOffsetOfHomeProductInHomeScreen,
            ),
            blurRadius: AppConstants.blurRadiusOfHomeProductInHomeScreen,
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: ManagerWidth.w7,
              vertical: ManagerHeight.h7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(ManagerRadius.r10),
                  child: Image.network(
                    image,
                    height: ManagerHeight.h125,
                    width: ManagerWidth.w148,
                  ),
                ),
                SizedBox(height: ManagerHeight.h10),
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: nameOfProductInHomeProductOfHomeScreen(),
                ),
                SizedBox(height: ManagerHeight.h4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$$price',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: priceOfProductInHomeProductOfHomeScreen(),
                    ),
                    SizedBox(width: ManagerWidth.w4),
                    if (discount != 0) ...{
                      Text(
                        '$oldPrice',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: oldPriceOfProductInHomeProductOfHomeScreen(),
                      ),
                    }
                  ],
                ),
                SizedBox(height: ManagerHeight.h4),
                Row(
                  children: [
                    const Icon(Icons.star, color: ManagerColors.c17),
                    Text(
                      ' 4.5 (110)',
                      style: TextStyle(
                        fontSize: ManagerFontSize.s13,
                        fontFamily: ManagerFontFamily.roboto,
                        fontWeight: ManagerFontWeight.w500,
                        color: ManagerColors.c18,
                      ),
                    ),
                  ],
                ),
                MainButton(
                  onPressed: () async {
                    await Get.toNamed(
                      Routes.productDetailsScreen,
                      arguments: data,
                    );
                  },
                  start: ManagerWidth.w3,
                  end: ManagerWidth.w3,
                  height: ManagerHeight.h26,
                  radius: ManagerRadius.r10,
                  child: Text(
                    ManagerStrings.showDetails,
                    style: showDetailsButtonInHomeProductOfHomeScreen(),
                  ),
                ),
              ],
            ),
          ),
          if (discount != 0) ...{
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: ManagerWidth.w2,
                  vertical: ManagerHeight.h2,
                ),
                decoration: const BoxDecoration(
                  color: ManagerColors.redColor,
                ),
                child: Text(
                  ManagerStrings.discount,
                  style: discountOfProductInHomeProductOfHomeScreen(),
                ),
              ),
            ),
          },
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: IconButton(
              onPressed: buttonFavorites,
              padding: EdgeInsetsDirectional.zero,
              icon: Icon(
                Icons.favorite,
                color: inFavorites ? ManagerColors.redColor : ManagerColors.c16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
