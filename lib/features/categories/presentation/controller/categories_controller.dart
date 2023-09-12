import '/config/all_imports.dart';

class CategoriesController extends GetxController {
  final CategoriesUseCase _useCase = instance<CategoriesUseCase>();
  List<DataOfCategoryModel> categories = [];
  bool loading = false;

  @override
  onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() async {
    loading = true;
    categories = [];
    (await _useCase.execute()).fold(
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

  ///////////////////////////////////////////
  List<DataOfProductOfCategoryModel> categoryDetails = [];

  Future<void> getCategoryDetails(int id) async {
    categoryDetails = [];
    final CategoryUseCase useCaseCategoryDetails =
        instance<CategoryUseCase>();
    loading = true;
    (await useCaseCategoryDetails.execute(CategoryBaseUseCaseInput(id)))
        .fold(
      (l) {},
      (r) {
        categoryDetails = r.data.data;
        loading = false;
      },
    );
    update();
  }

  void favoriteButton() {}
///////////////////////////////////////////
}
