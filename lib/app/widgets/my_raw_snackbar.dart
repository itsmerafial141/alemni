import 'package:alemni/core/themes/my_color_swatch.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/values/keys/response_code_key.dart';

class MyRawSnackBar {
  static SnackbarController rawSanckBar({
    required int statusCode,
    required String message,
  }) {
    return Get.rawSnackbar(
      messageText: Text(
        message,
        style: MyFonts.ubuntuMedium12.copyWith(color: Colors.white),
      ),
      borderRadius: 8,
      borderWidth: 1,
      snackPosition: SnackPosition.TOP,
      backgroundColor: statusCode == RespCode.success
          ? MyColorSwatch.success
          : statusCode == RespCode.error
              ? MyColorSwatch.danger
              : Colors.white,
      margin: const EdgeInsets.all(4),
    );
  }
}
