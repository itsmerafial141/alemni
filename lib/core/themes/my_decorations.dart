import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';

class MyDecoration {
  MyDecoration(this.context);
  final BuildContext context;

  double get defaultPadding => 2.sw(context);
  // double get paddingLayoutHorizontal => 4.sw(context);
  double get defaultDividerHeight => 2.sw(context);
  double get defaultDividerWidth => 2.sw(context);
  double get viewPaddingTop => MediaQuery.of(context).viewPadding.top;
  static const double marginHorizontal = 24;
  static const double defaultBottomNavigationBar = 70;
  static const double defaultBorderRadius = 10;
  static const double checkBoxBorderRadius = 5;
  static const double defaultTextFieldBorderRadius = 10;
  static const double defaultAppbarHeight = 50;
}
