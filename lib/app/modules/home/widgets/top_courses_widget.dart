import 'package:alemni/app/modules/home/controllers/home_controller.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/my_decorations.dart';
import '../../../widgets/my_divider_widget.dart';
import 'top_course_item_widget.dart';

class TopCourses extends GetView<HomeController> {
  const TopCourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          vertical: 1.5.sh(context),
          horizontal: MyDecoration.marginHorizontal,
        ),
        itemBuilder: (_, index) {
          return TopCourseItem(
            onTap: () {
              controller.onTopCourseItemTapped();
            },
            onTopCourseBookmarkTapped: () {
              controller.onTopCourseBookmarkTapped();
            },
          );
        },
        separatorBuilder: (_, __) => const MyDivider.width(size: 2),
        itemCount: 5,
      ),
    );
  }
}
