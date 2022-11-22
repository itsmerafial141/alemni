import 'package:alemni/core/themes/my_color_swatch.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import 'my_divider_widget.dart';

class MySingleButton extends StatelessWidget {
  const MySingleButton({
    Key? key,
    required this.title,
    this.path = 1,
    this.icon,
    required this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  const MySingleButton.withPrefix({
    Key? key,
    required this.title,
    required this.icon,
    this.path = 2,
    required this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final Widget? icon;
  final Color? backgroundColor;
  final int path;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? MyColors.logoPrincipal,
        ),
        overlayColor: MaterialStateProperty.all(
          backgroundColor != null
              ? Colors.green.withOpacity(.2)
              : MyColorSwatch.disable.withOpacity(.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: MyFonts.ubuntuRegular16.copyWith(
              color: backgroundColor != null ? MyColors.text : Colors.white,
            ),
          ),
          if (path == 2)
            Row(
              children: [
                const MyDivider.width(),
                icon!,
              ],
            ),
        ],
      ).margin(vertical: 16),
    );
  }
}
