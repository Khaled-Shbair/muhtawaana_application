import '/config/all_imports.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesController>(
      builder: (controller) {
        return SizedBox(
          height: ManagerHeight.h100,
          child: ListView.separated(
            padding: EdgeInsetsDirectional.only(
              start: ManagerWidth.w16,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) =>
                SizedBox(width: ManagerWidth.w8),
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              var data = controller.categories[index];
              if (controller.loading == false) {
                return Container(
                  padding: EdgeInsetsDirectional.only(
                    top: ManagerHeight.h10,
                    bottom: ManagerHeight.h10,
                    start: ManagerWidth.w8,
                    end: ManagerWidth.w8,
                  ),
                  width: ManagerWidth.w78,
                  decoration: BoxDecoration(
                    color: ManagerColors.c15,
                    borderRadius: BorderRadius.circular(ManagerRadius.r10),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: ManagerRadius.r20,
                        backgroundImage: NetworkImage(data.image),
                      ),
                      SizedBox(height: ManagerHeight.h10),
                      SizedBox(
                        height: ManagerHeight.h29,
                        child: Text(
                          data.name,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: nameOfCategoryInHomeCategoryOfHomeScreen(),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const MainShimmer();
              }
            },
          ),
        );
      },
    );
  }
}
