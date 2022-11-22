import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/themes/my_decorations.dart';
import '../../../../core/themes/my_fonts.dart';
import '../../../widgets/my_divider_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    Key? key,
    required this.description,
    required this.assetImage,
  }) : super(key: key);

  final String description;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.sh(context),
      width: 100.sw(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            'assets/icons/logoNoTitle.svg',
          ),
          const MyDivider.height(size: 2),
          Text(
            description,
            style: MyFonts.ubuntuRegular16,
            textAlign: TextAlign.center,
          ),
          const MyDivider.height(size: 2),
          SvgPicture.asset(
            assetImage,
          ),
        ],
      ).margin(horizontal: MyDecoration.marginHorizontal),
    );
  }
}
