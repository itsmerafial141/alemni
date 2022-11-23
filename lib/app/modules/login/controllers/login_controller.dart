import 'package:alemni/app/routes/app_pages.dart';
import 'package:alemni/app/widgets/my_raw_snackbar.dart';
import 'package:alemni/core/values/keys/response_code_key.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late Rx<bool> passwordObsecure;

  @override
  void onInit() {
    super.onInit();
    _initializeData();
  }

  void _initializeData() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    passwordObsecure = true.obs;
  }

  void onObsecureTapped() {
    passwordObsecure.toggle();
  }

  void onLoginTapped() {
    Get.offAllNamed(AppPages.NV);
  }

  void onGoogleTapped() {
    MyRawSnackBar.rawSanckBar(
      statusCode: RespCode.success,
      message: "Google tapped!",
    );
  }

  void onFacebookTapped() {
    MyRawSnackBar.rawSanckBar(
      statusCode: RespCode.success,
      message: "Facebook tapped!",
    );
  }

  void onApppleTapped() {
    MyRawSnackBar.rawSanckBar(
      statusCode: RespCode.success,
      message: "Apple tapped!",
    );
  }

  void onSignUpTapped() {}
}
