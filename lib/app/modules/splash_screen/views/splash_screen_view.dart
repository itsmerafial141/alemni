import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(SplashScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.sh(context),
          width: 100.sw(context),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image(
                width: 60.sw(context),
                image: const AssetImage(
                  "assets/images/ssCircle1.png",
                ),
              ),
              Image(
                width: 110.sw(context),
                image: const AssetImage(
                  "assets/images/ssCircle2.png",
                ),
              ),
              SizedBox(
                width: 100.sw(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/logo.svg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
