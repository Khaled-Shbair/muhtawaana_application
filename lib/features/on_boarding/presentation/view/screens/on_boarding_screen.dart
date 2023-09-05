import '/config/all_imports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<OnBoardingController>(
        builder: (controller) {
          controller.goToNextPage();
          return Scaffold(
            backgroundColor: ManagerColors.whiteColor,
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              leading: Visibility(
                visible: controller.isNotFirstPage(),
                child: IconButton(
                  onPressed: controller.previousPage,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: ManagerColors.c2,
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsetsDirectional.only(
                start: ManagerWidth.w16,
                end: ManagerWidth.w16,
                top: ManagerHeight.h16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView(
                      controller: controller.pageController,
                      onPageChanged: (index) => controller.setCurrentPage(index),
                      children: [
                        ...List.generate(
                          controller.pageViewItems.length,
                          (index) => PageViewItem(
                            title: controller.pageViewItems[index].title,
                            subTitle: controller.pageViewItems[index].subTitle,
                            image: controller.pageViewItems[index].image,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: ManagerHeight.h50,
                        width: ManagerWidth.w50,
                        child: CircularProgressIndicator(
                          color: ManagerColors.primaryColor,
                          backgroundColor: ManagerColors.c3,
                          strokeWidth: 10,
                          value: controller.valueCircularIndicator,
                        ),
                      ),
                      CircleAvatar(
                        radius: ManagerRadius.r25,
                        backgroundColor: ManagerColors.c1,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: ManagerColors.c2,
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: controller.isNotLastPage(),
                    replacement: MainButton(
                      onPressed: controller.goToAuthScreen,
                      text: ManagerStrings.getStarted,
                      start: ManagerWidth.w92,
                      end: ManagerWidth.w92,
                      top: ManagerHeight.h16,
                      bottom: ManagerHeight.h4,
                    ),
                    child: MainButton(
                      onPressed: controller.nextPage,
                      text: ManagerStrings.continueWord,
                      start: ManagerWidth.w92,
                      end: ManagerWidth.w92,
                      top: ManagerHeight.h16,
                      bottom: ManagerHeight.h4,
                    ),
                  ),
                  Visibility(
                    visible: controller.isNotLastPage(),
                    maintainAnimation: true,
                    maintainInteractivity: true,
                    maintainSemantics: true,
                    maintainSize: true,
                    maintainState: true,
                    child: MainButton(
                      onPressed: controller.skipPage,
                      text: ManagerStrings.skip,
                      color: ManagerColors.transparentColor,
                      start: ManagerWidth.w92,
                      end: ManagerWidth.w92,
                      bottom: ManagerHeight.h29,
                      colorText: ManagerColors.c4,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
