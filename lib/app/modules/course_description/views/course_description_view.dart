import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/course_description_controller.dart';
import '../widgets/tab_item_widget.dart';

class CourseDescriptionView extends GetView<CourseDescriptionController> {
  const CourseDescriptionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40.sh(context),
              width: 100.sw(context),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const NetworkImage(
                    'https://picsum.photos/id/200/1080/1980',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: const Image(
                image: AssetImage(
                  'assets/icons/course_description/Group 640.png',
                ),
              ),
            ),
            const MyDivider.height(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    "Learn React.js for beginners",
                    style: MyFonts.ubuntuRegular20,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const MyDivider.width(),
                InkWell(
                  onTap: () {
                    controller.onBookmarkTapped();
                  },
                  borderRadius: BorderRadius.circular(
                    100.sw(context),
                  ),
                  child: Obx(
                    () => SvgPicture.asset(
                      'assets/icons/course_description/Bookmark.svg',
                      color: controller.bookmark.value
                          ? MyColors.logoPrincipal
                          : MyColors.text,
                    ).margin(all: 12),
                  ),
                ),
              ],
            ).margin(horizontal: MyDecoration.marginHorizontal),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Programming",
                  style: MyFonts.ubuntuBold10.copyWith(color: Colors.white),
                )
                    .margin(horizontal: 14, vertical: 6)
                    .backgroundColor(color: MyColors.logoPrincipal)
                    .borderRadius(all: 100.sw(context)),
                const Icon(
                  Icons.star_rate_rounded,
                  color: MyColors.star,
                ),
                Text(
                  "4.3",
                  style: MyFonts.ubuntuRegular16,
                ),
                const MyDivider.width(),
                const SizedBox(
                  height: 20,
                  width: 1,
                ).backgroundColor(
                  color: MyColors.text,
                ),
                const MyDivider.width(),
                Expanded(
                  child: Text(
                    "5.529 Reviews",
                    style: MyFonts.ubuntuRegular14,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const MyDivider.width(),
                Text(
                  '\$30',
                  style: MyFonts.ubuntuBold14.copyWith(
                    color: MyColors.logoPrincipal,
                  ),
                ),
                const MyDivider.width(),
                Text(
                  '\$30',
                  style: MyFonts.ubuntuBold12.copyWith(
                    color: MyColors.textInput,
                  ),
                ),
              ],
            ).margin(horizontal: MyDecoration.marginHorizontal),
            const MyDivider.height(size: 2),
            Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        controller.detailData[index]['icon'],
                        height: 12,
                        width: 12,
                      ),
                      const MyDivider.width(),
                      Expanded(
                        child: AutoSizeText(
                          controller.detailData[index]['description'],
                          textAlign: TextAlign.start,
                          style: MyFonts.ubuntuRegular10,
                          maxLines: 1,
                          minFontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ).margin(horizontal: 1.sw(context)),
                ),
              ),
            ).margin(horizontal: MyDecoration.marginHorizontal),
            const MyDivider.height(size: 2),
            Row(
              children: List.generate(
                controller.tabTitle.length,
                (index) => TabItem(
                  onTap: () {
                    controller.onTabTapped(index);
                  },
                  title: controller.tabTitle[index],
                  indexIndicaror: controller.indexIndicator,
                  index: index,
                ),
              ),
            ).margin(horizontal: MyDecoration.marginHorizontal),
            ExpandablePageView.builder(
              controller: controller.pageController,
              itemCount: controller.tabTitle.length,
              onPageChanged: (index) {
                controller.changeToPage(index);
              },
              itemBuilder: (_, index) {
                return controller.listScreen[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
