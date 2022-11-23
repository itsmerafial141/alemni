import 'package:alemni/app/modules/home/widgets/sub_title_icon_widget.dart';
import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/app/widgets/my_input_field_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/home_appbar_widget.dart';
import '../widgets/recent_courses_widget.dart';
import '../widgets/top_courses_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MyDecoration(context).viewPaddingTop,
            ),
            const HomeAppbar(),
            const MyDivider.height(),
            MyInputField.noTitle(
              controller: controller.searchController,
              hint: "Search for a subject",
              fill: MyColors.logoPrincipal.withOpacity(.1),
              suffixIcon: SvgPicture.asset(
                "assets/icons/navigation/Edit Square.svg",
                height: 16,
                width: 16,
                fit: BoxFit.none,
                color: MyColors.textInput,
              ),
            ).margin(
              horizontal: MyDecoration.marginHorizontal,
            ),
            const MyDivider.height(size: 2),
            const SubTitleIcon(
              subTitle: "Top courses",
              iconAsset: 'assets/icons/homepage/Fire.svg',
            ),
            const MyDivider.height(),
            const TopCourses(),
            const MyDivider.height(size: 2),
            const SubTitleIcon(
              subTitle: "Recent Courses",
              iconAsset: 'assets/icons/homepage/Flash.svg',
            ),
            const RecentCourses()
          ],
        ),
      ),
    );
  }
}
