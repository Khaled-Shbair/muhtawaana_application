import '/config/all_imports.dart';

class MyCardProduct extends StatelessWidget {
  const MyCardProduct(
    this.data, {
    super.key,
  });

  final ProductDataHomeModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ManagerColors.c24,
      child: ListTile(
        leading: Container(
          height: ManagerHeight.h70,
          width: ManagerWidth.w72,
          decoration: BoxDecoration(
            color: ManagerColors.whiteColor,
            borderRadius: BorderRadius.circular(ManagerRadius.r10),
            image: DecorationImage(
              image: NetworkImage(data.image),
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        title: Text(
          data.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: nameOfProductInMyCardProduct(),
        ),
        subtitle: Row(
          children: [
            Text(
              '\$${data.price}',
              style: priceOfProductInMyCardProduct(),
            ),
            if (data.discount != 0) ...{
              SizedBox(width: ManagerWidth.w4),
              Text(
                data.oldPrice.toString(),
                style: oldPriceOfProductInMyCardProduct(),
              ),
            }
          ],
        ),
        trailing: MainButton(
          height: ManagerHeight.h30,
          width: ManagerWidth.w50,
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: ManagerWidth.w4,
            ),
            child: Text(
              ManagerStrings.showDetails,
              style: showDetailsButtonInMyCardProduct(),
            ),
          ),
          onPressed: () async => await Get.toNamed(
            Routes.productDetailsScreen,
            arguments: data,
          ),
        ),
      ),
    );
  }
}
