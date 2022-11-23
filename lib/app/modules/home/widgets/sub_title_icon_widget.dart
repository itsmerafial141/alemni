import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/themes/my_decorations.dart';
import '../../../../core/themes/my_fonts.dart';
import '../../../widgets/my_divider_widget.dart';

class SubTitleIcon extends StatelessWidget {
  const SubTitleIcon({
    Key? key,
    required this.subTitle,
    required this.iconAsset,
  }) : super(key: key);
  final String subTitle;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          subTitle,
          style: MyFonts.ubuntuMedium18,
        ),
        const MyDivider.width(size: .5),
        SvgPicture.asset(iconAsset)
      ],
    ).margin(horizontal: MyDecoration.marginHorizontal);
  }
}
