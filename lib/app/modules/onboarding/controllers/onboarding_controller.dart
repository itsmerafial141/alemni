import 'package:alemni/app/routes/app_pages.dart';
import 'package:alemni/core/values/strings/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late List<String> description;
  late List<String> assetImage;
  late PageController pageController;
  late Rx<int> pageIndicator;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    description = MyConstant.obDescription;
    assetImage = MyConstant.obAssetImage;
    pageController = PageController();
    pageIndicator = 0.obs;
  }

  @override
  void dispose() {
    super.dispose();
    description.clear();
    assetImage.clear();
  }

  void changeToPage(int index) {
    pageIndicator.value = index;
  }

  void animateToPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  void animateToNextPage() {
    if (pageIndicator.value < description.length - 1) {
      pageController.animateToPage(
        pageIndicator.value + 1,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }
  }

  void onNextTapped() {
    if (pageIndicator.value == description.length - 1) {
      Get.toNamed(AppPages.LG);
    } else {
      animateToNextPage();
    }
  }
}
