import 'package:alemni/app/widgets/my_raw_snackbar.dart';
import 'package:alemni/core/values/keys/response_code_key.dart';
import 'package:alemni/core/values/strings/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../widgets/gift_dialog_widget.dart';

class HomeController extends GetxController {
  late List<String> appbarIconAsset;
  late TextEditingController searchController;
  late PageController _pageController;
  late Rx<int> _pageIndicator;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  @override
  void onReady() {
    super.onReady();
    Get.dialog(
      GiftDialog(
        onDotClicked: (index) => _animateToPage(index),
        onPageChanged: (index) => _changeToPage(index),
        activeIndex: _pageIndicator,
        count: 3,
        controller: _pageController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    appbarIconAsset.clear();
    searchController.dispose();
  }

  void _initializeData() {
    appbarIconAsset = MyConstant.hmAppbarIconAsset;
    searchController = TextEditingController();
    _pageController = PageController();
    _pageIndicator = 0.obs;
  }

  void onAppbarActionTapped(int index) {
    switch (index) {
      case 0:
        MyRawSnackBar.rawSanckBar(
          statusCode: RespCode.success,
          message: "Notifikasi tapped!",
        );
        break;
      case 1:
        MyRawSnackBar.rawSanckBar(
          statusCode: RespCode.success,
          message: "Bookmark tapped!",
        );
        break;
      case 2:
        MyRawSnackBar.rawSanckBar(
          statusCode: RespCode.success,
          message: "Send tapped!",
        );
        break;
    }
  }

  void _animateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  void _changeToPage(int index) {
    _pageIndicator.value = index;
  }

  void onTopCourseItemTapped() {}

  void onTopCourseBookmarkTapped() {}

  void onRecentItemTapped() {}
}
