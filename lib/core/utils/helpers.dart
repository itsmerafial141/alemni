import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

double percentageOfSize(BuildContext context, double size, double percentage) {
  return size * percentage / 100;
}

double percentageOfScreenHeight(BuildContext context, double percentage) {
  return percentageOfSize(
    context,
    MediaQuery.of(context).size.height - MediaQuery.of(context).viewPadding.top,
    percentage,
  );
}

double percentageOfScreenWidth(BuildContext context, double percentage) {
  return percentageOfSize(
    context,
    MediaQuery.of(context).size.width,
    percentage,
  );
}

Future<String> getJson({required String fileName}) {
  return rootBundle.loadString(fileName);
}
