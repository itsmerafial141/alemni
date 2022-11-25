import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/my_fonts.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.indexIndicaror,
    required this.index,
  }) : super(key: key);

  final Function() onTap;
  final String title;
  final Rx<int> indexIndicaror;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 43,
              alignment: Alignment.center,
              child: Text(
                title,
                style: MyFonts.ubuntuRegular14,
                textAlign: TextAlign.center,
              ),
            ),
            Obx(
              () => const SizedBox(
                width: double.infinity,
                height: 1,
              ).backgroundColor(
                color: indexIndicaror.value == index
                    ? MyColors.logoPrincipal
                    : MyColors.textInput,
              ),
            )
          ],
        ),
      ),
    );
  }
}
