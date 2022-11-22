import 'package:alemni/app/routes/app_pages.dart';
import 'package:alemni/core/values/strings/constants.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    Future.delayed(
      const Duration(seconds: MyConstant.splashScreenDelay),
      () => Get.offAllNamed(AppPages.OB),
    );
  }
}
