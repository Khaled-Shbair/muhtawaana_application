import '/config/all_imports.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({
    required this.products,
    required this.favoriteButton,
    super.key,
  });

  final List<ProductDataHomeModel> products;
  final Function() favoriteButton;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: ManagerWidth.w16,
      ),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: ManagerWidth.w10,
        mainAxisSpacing: ManagerHeight.h14,
        childAspectRatio: ManagerWidth.w162 / ManagerHeight.h258,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        var data = products[index];
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
                        data.image,
                        height: ManagerHeight.h125,
                        width: ManagerWidth.w148,
                      ),
                    ),
                    SizedBox(height: ManagerHeight.h10),
                    Text(
                      data.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: nameOfProductInHomeProductOfHomeScreen(),
                    ),
                    SizedBox(height: ManagerHeight.h4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${data.price}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: priceOfProductInHomeProductOfHomeScreen(),
                        ),
                        SizedBox(width: ManagerWidth.w4),
                        if (data.discount != 0) ...{
                          Text(
                            '${data.oldPrice}',
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
              if (data.discount != 0) ...{
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
                  onPressed: favoriteButton,
                  padding: EdgeInsetsDirectional.zero,
                  icon: Icon(
                    Icons.favorite,
                    color: data.inFavorites
                        ? ManagerColors.redColor
                        : ManagerColors.c16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
