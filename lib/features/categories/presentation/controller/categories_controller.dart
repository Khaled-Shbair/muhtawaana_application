import '/config/all_imports.dart';

class CategoriesController extends GetxController {
  static CategoriesController get to => Get.find();
  final CategoriesUseCase _categoriesUseCase = instance<CategoriesUseCase>();
  List<DataOfCategoryModel> categories = [];
  bool loading = false;

  @override
  onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() async {
    categories = [];
    loading = true;
    (await _categoriesUseCase.execute()).fold(
      (l) {},
      (r) {
        categories = r.data.data;
        loading = false;
      },
    );
    update();
  }

  void onTapOnCategory(int id) async {
    initCategoryDetails();
    ProductOfCategoryController.to.getCategoryDetails(id);
    await Get.toNamed(Routes.categoryDetailsScreen, arguments: id);
  }

  void backButton() {
    finishCategoryDetails();
    finishCategories();
  }
}
