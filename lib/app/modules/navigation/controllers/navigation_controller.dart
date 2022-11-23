import 'package:alemni/app/modules/home/views/home_view.dart';
import 'package:alemni/app/modules/my_courses/views/my_courses_view.dart';
import 'package:alemni/app/modules/profile/views/profile_view.dart';
import 'package:alemni/app/modules/search/views/search_view.dart';
import 'package:alemni/core/values/strings/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  late List<String> iconAsset;
  late List<String> title;
  late List<Widget> listPage;
  late Rx<int> pageIndicator;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
    iconAsset.clear();
    title.clear();
    listPage.clear();
    pageIndicator.close();
  }

  void _initializeData() {
    iconAsset = MyConstant.nvIconAsset;
    title = MyConstant.nvTitle;
    pageIndicator = 0.obs;
    listPage = const [
      HomeView(),
      MyCoursesView(),
      SearchView(),
      ProfileView(),
    ];
  }

  void onItemTapped(int index) {
    pageIndicator.value = index;
  }
}
