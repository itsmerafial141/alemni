// ignore_for_file: unnecessary_this

import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../themes/my_color_swatch.dart';
import '../../themes/my_decorations.dart';

extension WidgetExtension on Widget {
  Widget backgroundColor({Color? color}) {
    return ColoredBox(
      color: color ?? Colors.transparent,
      child: this,
    );
  }

  Widget boxShadow({Color? color}) {
    return ColoredBox(
      color: color ?? Colors.transparent,
      child: this,
    );
  }

  Widget borderRadius({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
    double? verticalTop,
    double? verticalBottom,
    double? horizontalLeft,
    double? horizontalRight,
    double? all,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          topLeft ?? verticalTop ?? horizontalLeft ?? all ?? 0,
        ),
        topRight: Radius.circular(
          topRight ?? verticalTop ?? horizontalRight ?? all ?? 0,
        ),
        bottomLeft: Radius.circular(
          bottomLeft ?? verticalBottom ?? horizontalLeft ?? all ?? 0,
        ),
        bottomRight: Radius.circular(
          bottomRight ?? verticalBottom ?? horizontalRight ?? all ?? 0,
        ),
      ),
      child: this,
    );
  }

  Widget margin({
    double? horizontal,
    double? vertical,
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? all,
  }) {
    return Container(
      margin: EdgeInsets.only(
        top: top ?? vertical ?? all ?? 0,
        bottom: bottom ?? vertical ?? all ?? 0,
        left: left ?? horizontal ?? all ?? 0,
        right: right ?? horizontal ?? all ?? 0,
      ),
      child: this,
    );
  }

  Widget shimmer() {
    return Shimmer.fromColors(
      baseColor: MyColorSwatch.disable,
      highlightColor: Colors.white,
      child: this,
    );
  }

  Widget button(BuildContext context,
      {required Function() onPressed,
      Color? backgroundColor,
      Color? overlayColor,
      BorderSide? side,
      double? borderRadius,
      double? elevation}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation ?? 0),
        overlayColor: MaterialStateProperty.all(
          overlayColor ?? Colors.white10,
        ),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? Colors.white),
        padding: MaterialStateProperty.all(
            EdgeInsets.all(MyDecoration(context).defaultPadding)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: side ?? BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadius ?? MyDecoration.defaultBorderRadius,
            ),
          ),
        ),
      ),
      child: this,
    );
  }

  Widget button2(BuildContext context,
      {required Function() onPressed,
      double? elevation,
      Color? backgroundColor}) {
    return Stack(
      fit: StackFit.expand,
      children: [
        this,
        const SizedBox().button(
          context,
          onPressed: onPressed,
          elevation: elevation ?? 1,
          overlayColor: MyColors.logoPrincipal.withOpacity(.1),
          backgroundColor: backgroundColor ?? Colors.transparent,
        ),
      ],
    );
  }
}

extension TextExtension on Text {
  Size textSize() {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: "KANTOR", style: MyFonts.ubuntuSemibold10),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
