// ignore_for_file: unnecessary_this

import 'package:flutter/cupertino.dart';

import '../helpers.dart';

extension DoubleExtension on num {
  /// Mengembalikan nilai persentase dari lebar layar
  double sw(BuildContext context) => percentageOfScreenWidth(
        context,
        this.toDouble(),
      );

  /// Mengembalikan nilai persentase dari tinggi layar
  double sh(BuildContext context) => percentageOfScreenHeight(
        context,
        this.toDouble(),
      );
}
