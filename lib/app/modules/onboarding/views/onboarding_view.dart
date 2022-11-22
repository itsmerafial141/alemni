import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/my_single_button_widget.dart';
import '../controllers/onboarding_controller.dart';
import '../widgets/onboarding_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.sh(context) + MyDecoration(context).viewPaddingTop,
          width: 100.sw(context),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView.builder(
                onPageChanged: (index) {
                  controller.changeToPage(index);
                },
                controller: controller.pageController,
                itemBuilder: (_, index) {
                  return OnBoardingWidget(
                    description: controller.description[index],
                    assetImage: controller.assetImage[index],
                  );
                },
                itemCount: controller.description.length,
              ),
              Image(
                width: 100.sw(context),
                image: const AssetImage(
                  "assets/images/obCircle.png",
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  children: [
                    Column(
                      children: [
                        Obx(
                          () => AnimatedSmoothIndicator(
                            onDotClicked: (index) {
                              controller.animateToPage(index);
                            },
                            activeIndex: controller.pageIndicator.value,
                            count: controller.description.length,
                            effect: const ExpandingDotsEffect(
                              dotColor: Color(0xffC1C1C1),
                              activeDotColor: Color(0xff3A3A3A),
                              dotHeight: 4,
                              dotWidth: 4,
                              expansionFactor: 6,
                            ),
                          ),
                        ),
                        const MyDivider.height(size: 2),
                        Obx(
                          () => MySingleButton.withPrefix(
                            onPressed: () {
                              controller.onNextTapped();
                            },
                            title: controller.pageIndicator.value !=
                                    controller.assetImage.length - 1
                                ? "Next"
                                : "Let's go",
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ),
                          ).margin(horizontal: MyDecoration.marginHorizontal),
                        ),
                      ],
                    ),
                  ],
                ).margin(bottom: MyDecoration.marginHorizontal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
