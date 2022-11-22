import 'package:flutter/material.dart';

import '../../themes/my_color_swatch.dart';

extension IntegerExtension on double {
  BoxShadow get boxShadow => BoxShadow(
        spreadRadius: this,
        blurRadius: 10,
        color: MyColorSwatch.disable,
      );
}
