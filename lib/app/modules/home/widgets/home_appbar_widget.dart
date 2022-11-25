import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/my_decorations.dart';
import '../../../../core/themes/my_fonts.dart';
import '../../../widgets/my_divider_widget.dart';
import '../controllers/home_controller.dart';

class HomeAppbar extends GetView<HomeController> {
  const HomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw(context),
      padding: EdgeInsets.symmetric(
        vertical: MyDecoration(context).defaultPadding * 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/icons/homepage/Group 642.png',
          ),
          const MyDivider.width(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100.sw(context),
              ),
              border: Border.all(
                width: 1,
                color: MyColors.logoPrincipal,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/Ellipse 3.png",
                ),
              ),
            ),
          ),
          const MyDivider.width(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hey there.",
                      style: MyFonts.ubuntuRegular12.copyWith(
                        color: MyColors.textInput,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/homepage/Group 96(1).svg',
                      height: 13,
                    ),
                  ],
                ),
                const MyDivider.height(size: .5),
                Text(
                  "Rafi Fitra Alamsyah",
                  style: MyFonts.ubuntuBold12,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              controller.appbarIconAsset.length,
              (index) => FloatingActionButton(
                heroTag: "Btn$index",
                onPressed: () {
                  controller.onAppbarActionTapped(index);
                },
                mini: true,
                elevation: 0,
                highlightElevation: 0,
                child: SvgPicture.asset(
                  controller.appbarIconAsset[index],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: MyDecoration.marginHorizontal,
          ),
        ],
      ),
    );
  }
}
