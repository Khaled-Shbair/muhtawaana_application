import '/config/all_imports.dart';

class OnBoardingController extends GetxController {
  final AppSettingsSharedPreferences _sharedPreferences =
      instance<AppSettingsSharedPreferences>();
  late PageController pageController;
  int currentPage = 0;
  double valueCircularIndicator = 0.2;
  final List<PageViewItem> pageViewItems = <PageViewItem>[
    PageViewItem(
      title: ManagerStrings.titleOnBoardingOne,
      subTitle: ManagerStrings.subTitleOnBoardingOne,
      image: ManagerAssets.imageOnBoardingOne,
    ),
    PageViewItem(
      title: ManagerStrings.titleOnBoardingTwo,
      subTitle: ManagerStrings.subTitleOnBoardingTwo,
      image: ManagerAssets.imageOnBoardingTwo,
    ),
    PageViewItem(
      title: ManagerStrings.titleOnBoardingThree,
      subTitle: ManagerStrings.subTitleOnBoardingThree,
      image: ManagerAssets.imageOnBoardingThree,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  void goToNextPage() {
    if (currentPage == 0) {
      valueCircularIndicator = 0.2;
    } else if (currentPage == 1) {
      valueCircularIndicator = 0.6;
    } else if (currentPage == 2) {
      valueCircularIndicator = 1;
    }
    update();
  }

  void setCurrentPage(int page) {
    currentPage = page;
    update();
  }

  void skipPage() {
    currentPage = pageViewItems.length - 1;
    pageController.animateToPage(
      currentPage,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: AppConstants.durationOnBoarding),
    );
    update();
  }

  void nextPage() {
    pageController.nextPage(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: AppConstants.durationOnBoarding),
    );
    update();
  }

  void previousPage() {
    pageController.previousPage(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: AppConstants.durationOnBoarding),
    );
    update();
  }

  bool isLastPage() {
    return currentPage == pageViewItems.length - 1;
  }

  bool isNotLastPage() {
    return currentPage != pageViewItems.length - 1;
  }

  bool isNotFirstPage() {
    return currentPage != 0;
  }

  Future<void> goToAuthScreen() async {
    await _sharedPreferences.setOnBoarding();
    await Get.offAllNamed(Routes.authScreen);
  }
}
