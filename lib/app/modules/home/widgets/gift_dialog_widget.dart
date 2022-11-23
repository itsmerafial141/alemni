import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class GiftDialog extends StatelessWidget {
  const GiftDialog({
    Key? key,
    required this.onDotClicked,
    required this.activeIndex,
    required this.count,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  final Function(int) onDotClicked;
  final Function(int) onPageChanged;
  final Rx<int> activeIndex;
  final int count;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Wrap(
        children: [
          Material(
            child: Container(
              width: 70.sw(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.68),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff1CD6FF),
                    Color(0xffA073FF),
                  ],
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ExpandablePageView.builder(
                    controller: controller,
                    itemCount: count,
                    onPageChanged: onPageChanged,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/homepage/Illustration - Shopping, e-commerce, sale _ store, shop, smartphone, discount, happy, savings, gift.svg',
                          ),
                          const MyDivider.height(),
                          Text(
                            "Welcome gift !",
                            style: MyFonts.ubuntuBold16.copyWith(
                              color: MyColors.colorTextWhite,
                            ),
                          ),
                          const MyDivider.height(),
                          SizedBox(
                            width: 60.sw(context),
                            child: Text(
                              "Grab a 30% discount in your first course for registring in our App.",
                              style: MyFonts.ubuntuMedium14.copyWith(
                                color: MyColors.colorTextWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ).margin(
                          horizontal: MyDecoration.marginHorizontal,
                          top: MyDecoration.marginHorizontal,
                          bottom: MyDecoration.marginHorizontal * 2);
                    },
                  ),
                  Obx(
                    () => AnimatedSmoothIndicator(
                      onDotClicked: onDotClicked,
                      activeIndex: activeIndex.value,
                      count: count,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Colors.white,
                        dotHeight: 4,
                        dotWidth: 4,
                        expansionFactor: 6,
                      ),
                    ),
                  ).margin(
                    bottom: MyDecoration.marginHorizontal,
                  )
                ],
              ),
            ),
          )
        ],
      ).borderRadius(all: 11.68),
    );
  }
}
