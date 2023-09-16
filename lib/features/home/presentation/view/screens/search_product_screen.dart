import '/config/all_imports.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: myAppBar(onPressed: controller.clearSearchProduct),
          body: Column(
            children: [
              MySearch(
                controller: controller.searchController,
                formKey: controller.formKey,
                onChanged: (value) => controller.searchProduct(value),
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsetsDirectional.only(
                      start: ManagerWidth.w16,
                      end: ManagerWidth.w16,
                      top: ManagerHeight.h7,
                      bottom: ManagerHeight.h7,
                    ),
                    itemCount: controller.searchProducts.length,
                    itemBuilder: (context, index) {
                      var data = controller.searchProducts[index];
                      return MyCardProduct(data);
                    },
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
