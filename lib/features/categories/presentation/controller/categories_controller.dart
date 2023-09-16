import '/config/all_imports.dart';

class CategoriesController extends GetxController {
  static CategoriesController get to => Get.find();
  final CategoriesUseCase _categoriesUseCase = instance<CategoriesUseCase>();
  List<DataOfProductOfCategoryModel> categoryDetails = [];
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
    await Get.toNamed(Routes.categoryDetailsScreen, arguments: id);
    initCategoryDetails();
    await getCategoryDetails(id);
  }

  Future<void> getCategoryDetails(int id) async {
    final CategoryUseCase categoryDetailsUseCase = instance<CategoryUseCase>();
    categoryDetails = [];
    loading = true;
    (await categoryDetailsUseCase.execute(CategoryBaseUseCaseInput(id))).fold(
      (l) {},
      (r) {
        categoryDetails = r.data.data;
        loading = false;
      },
    );
    update();
  }

  void favoriteButton() {}
}
