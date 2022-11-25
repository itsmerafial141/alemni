import 'package:alemni/app/modules/course_description/screens/about_screen.dart';
import 'package:alemni/app/modules/course_description/screens/lessons_screen.dart';
import 'package:alemni/app/modules/course_description/screens/review_screen.dart';
import 'package:alemni/core/values/strings/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDescriptionController extends GetxController {
  late List<String> tabTitle;
  late List<Widget> listScreen;
  late Rx<int> indexIndicator;
  late PageController pageController;
  late List<Map<String, dynamic>> detailData;
  late Rx<bool> bookmark;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
    tabTitle.clear();
    indexIndicator.close();
    listScreen.clear();
    pageController.dispose();
    detailData.clear();
  }

  void _initializeData() {
    tabTitle = MyConstant.cdTabTitle;
    indexIndicator = 0.obs;
    pageController = PageController();
    bookmark = false.obs;
    listScreen = [
      const AboutScreen(),
      const LessonsScreen(),
      const ReviewScreen(),
    ];
    detailData = [
      {
        "icon": "assets/icons/course_description/Supergroup.svg",
        "description": "6.246 Students",
      },
      {
        "icon": "assets/icons/course_description/Time.svg",
        "description": "+60 Hours",
      },
      {
        "icon": "assets/icons/course_description/Folder 2.svg",
        "description": "Ressources",
      },
    ];
  }

  void onTabTapped(int index) {
    indexIndicator.value = index;
    _animateToPage(index);
  }

  void _animateToPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }

  void changeToPage(int index) {
    indexIndicator.value = index;
  }

  void onTeacherMessageTapped() {}

  void onBookmarkTapped() {
    bookmark.toggle();
  }
}
