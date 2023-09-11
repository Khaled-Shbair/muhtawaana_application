import '/config/all_imports.dart';

class CategoriesController extends GetxController {
  final CategoriesUseCase _useCase = instance<CategoriesUseCase>();
  List<DataCategoryModel> categories = [];
  bool loading = false;

  @override
  onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() async {
    loading = true;
    (await _useCase.execute()).fold(
      (l) {},
      (r) {
        categories = r.data.data;
        loading = false;
      },
    );
    update();
  }
  void onTapOnCategory(int id){}
}
