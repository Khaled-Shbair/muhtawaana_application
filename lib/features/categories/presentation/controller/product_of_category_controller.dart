import '/config/all_imports.dart';

class ProductOfCategoryController extends GetxController {
  static ProductOfCategoryController get to => Get.find();
  final CategoryUseCase categoryDetailsUseCase = instance<CategoryUseCase>();

  List<DataOfProductOfCategoryModel> categoryDetails = [];
  bool loading = false;

  Future<void> getCategoryDetails(int id) async {
    loading = true;
    categoryDetails = [];
    (await categoryDetailsUseCase.execute(CategoryBaseUseCaseInput(id))).fold(
      (l) {},
      (r) {
        categoryDetails = r.data.data;
        loading = false;
      },
    );
    update();
  }

  void buttonFavorites(int id) {
    for (var e in categoryDetails) {
      if (e.id == id) {
        e.inFavorites = !e.inFavorites;
      }
    }
    FavoritesController.to.addOrDeleteProductFavorites(id);
    update();
  }

  void backButton() {
    finishCategoryDetails();
  }
}
