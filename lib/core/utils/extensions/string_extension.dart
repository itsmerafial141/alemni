// ignore_for_file: unnecessary_this

import 'package:intl/intl.dart';

extension StringExtension on String {
  /// Mengembalikan nilai integer dari string
  int get toInt => int.parse(this);

  String toIDR() {
    var result = "";
    for (int index = 0; index < this.length - 3; index++) {
      result += this[index];
    }
    return result;
  }

  String toDate(String format) {
    return DateFormat(format, 'id_ID').format(DateTime.parse(this));
  }

  String extFile(int minLast) {
    return ".${(this).substring(0, this.length - minLast).split('.').last}";
  }

  String getNameFile(int minLast) {
    return (this).substring(0, this.length - minLast).split('/').last;
  }
}
