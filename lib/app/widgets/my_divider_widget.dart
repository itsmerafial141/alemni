import 'package:alemni/core/themes/my_decorations.dart';
import 'package:flutter/cupertino.dart';

class MyDivider extends StatelessWidget {
  const MyDivider.height({
    Key? key,
    this.isHight = true,
    this.isWidht = false,
    this.size,
  }) : super(key: key);
  const MyDivider.width({
    Key? key,
    this.isHight = false,
    this.isWidht = true,
    this.size,
  }) : super(key: key);

  final bool? isHight;
  final bool? isWidht;
  final double? size;

  @override
  Widget build(BuildContext context) {
    double tempSize = size ?? 1.0;
    return isHight == true
        ? SizedBox(
            height: MyDecoration(context).defaultDividerHeight * tempSize,
          )
        : SizedBox(
            width: MyDecoration(context).defaultDividerWidth * tempSize,
          );
  }
}
