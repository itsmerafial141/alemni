import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';
import '../widgets/navigation_cell_widget.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.pageIndicator.value,
          children: controller.listPage,
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: 100.sw(context),
        height: MyDecoration.defaultBottomNavigationBar,
        child: Row(
          children: List.generate(
            controller.title.length,
            (index) => Obx(
              () => NavigationCell(
                onTap: () {
                  controller.onItemTapped(index);
                },
                iconAsset: controller.iconAsset[index],
                title: controller.title[index],
                index: index,
                controllerIndicator: controller.pageIndicator.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
