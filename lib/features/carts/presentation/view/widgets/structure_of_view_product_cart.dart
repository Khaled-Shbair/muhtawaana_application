import '/config/all_imports.dart';

class StructureOfViewProductCart extends StatelessWidget {
  const StructureOfViewProductCart({
    required this.deleteButton,
    required this.increaseButton,
    required this.decreaseButton,
    required this.data,
    required this.quantity,
    super.key,
  });

  final Function() deleteButton;
  final Function() increaseButton;
  final Function() decreaseButton;
  final DataOfProductOfCartModel data;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ManagerHeight.h126,
      padding: EdgeInsetsDirectional.only(
        start: ManagerWidth.w10,
        end: ManagerWidth.w10,
        top: ManagerHeight.h10,
        bottom: ManagerHeight.h10,
      ),
      decoration: BoxDecoration(
        color: ManagerColors.primaryColor,
        borderRadius: BorderRadius.circular(
          ManagerRadius.r10,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: ManagerWidth.w100,
            decoration: BoxDecoration(
              color: ManagerColors.whiteColor,
              borderRadius: BorderRadius.circular(ManagerRadius.r10),
              image: DecorationImage(
                image: NetworkImage(
                  data.image,
                ),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          SizedBox(width: ManagerWidth.w14),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: ManagerWidth.w163,
                        child: Text(
                          data.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: nameOfProductInCartScreen(),
                        ),
                      ),
                      SizedBox(height: ManagerHeight.h4),
                      Text(
                        '\$${data.price}',
                        style: priceOfProductInCartScreen(),
                      ),
                    ],
                  ),
                  SizedBox(width: ManagerWidth.w2),
                  IconButton(
                    onPressed: deleteButton,
                    padding: EdgeInsetsDirectional.zero,
                    icon: SvgPicture.asset(
                      ManagerAssets.deleteIcon,
                      height: ManagerHeight.h20,
                      width: ManagerWidth.w20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MainButton(
                    onPressed: () => increaseButton,
                    color: ManagerColors.whiteColor,
                    height: ManagerHeight.h30,
                    width: ManagerWidth.w30,
                    child: SvgPicture.asset(
                      ManagerAssets.plusIcon,
                      height: ManagerHeight.h14,
                      width: ManagerWidth.w14,
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h30,
                    child: Text(
                      quantity.toString(),
                      textAlign: TextAlign.center,
                      style: quantityOfProductInCartScreen(),
                    ),
                  ),
                  MainButton(
                    onPressed: () => decreaseButton,
                    color: ManagerColors.whiteColor,
                    height: ManagerHeight.h30,
                    width: ManagerWidth.w30,
                    child: SvgPicture.asset(
                      ManagerAssets.minimizeIcon,
                      height: ManagerHeight.h4,
                      width: ManagerWidth.w4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
