import 'package:alemni/app/modules/home/controllers/home_controller.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/my_divider_widget.dart';
import 'recent_courses_item_widget.dart';

class RecentCourses extends GetView<HomeController> {
  const RecentCourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: MyDecoration.marginHorizontal,
        vertical: MyDecoration(context).defaultPadding * 2,
      ),
      itemBuilder: (_, index) {
        return RecentCoursesItem(
          onTap: () {
            controller.onRecentItemTapped();
          },
        );
      },
      separatorBuilder: (_, __) => const MyDivider.height(size: 2),
      itemCount: 5,
    );
  }
}
