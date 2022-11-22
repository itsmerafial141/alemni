import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/app/widgets/my_input_field_widget.dart';
import 'package:alemni/app/widgets/my_single_button_widget.dart';
import 'package:alemni/core/themes/my_color_swatch.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: 100.sw(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyDivider.height(size: 8),
              Text(
                "Let’s get started",
                style: MyFonts.ubuntuRegular32,
              ),
              const MyDivider.height(size: 4),
              SvgPicture.asset(
                'assets/icons/undraw_the_world_is_mine_re_j5cr 1.svg',
              ),
              const MyDivider.height(size: 2),
              MyInputField.outlined(
                controller: controller.usernameController,
                title: "Username",
                hint: "",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
              ),
              const MyDivider.height(),
              Obx(
                () => MyInputField.outlined(
                  controller: controller.passwordController,
                  obscureText: controller.passwordObsecure.value,
                  title: "Password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: IconButton(
                    onPressed: () => controller.onObsecureTapped(),
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: !controller.passwordObsecure.value
                          ? MyColors.logoPrincipal
                          : MyColorSwatch.disable.shade500,
                    ),
                  ),
                  hint: "",
                ),
              ),
              const MyDivider.height(size: 2),
              Text(
                "Forgot your password ?",
                style: MyFonts.ubuntuRegular12,
              ),
              const MyDivider.height(size: 2),
              MySingleButton(
                title: "Log in",
                onPressed: () {
                  controller.onLoginTapped();
                },
              ),
              const MyDivider.height(size: 4),
              Row(
                children: [
                  Expanded(
                    child: const SizedBox(
                      height: 1,
                    ).backgroundColor(color: Colors.black),
                  ),
                  const MyDivider.width(),
                  Text(
                    "OR",
                    style: MyFonts.ubuntuRegular16,
                  ),
                  const MyDivider.width(),
                  Expanded(
                    child: const SizedBox(
                      height: 1,
                    ).backgroundColor(color: Colors.black),
                  ),
                ],
              ),
              const MyDivider.height(size: 4),
              MySingleButton.withPrefix(
                title: "Connect with google",
                icon: Image.asset(
                  'assets/icons/5847f9cbcef1014c0b5e48c8 1.png',
                ),
                backgroundColor: MyColors.buttonColor,
                onPressed: () {
                  controller.onGoogleTapped();
                },
              ),
              const MyDivider.height(size: 2),
              MySingleButton.withPrefix(
                title: "Connect with facebook",
                icon: Image.asset(
                  'assets/icons/Facebook-logo-blue-circle-large-transparent-png 1.png',
                ),
                backgroundColor: MyColors.buttonColor,
                onPressed: () {
                  controller.onFacebookTapped();
                },
              ),
              const MyDivider.height(size: 2),
              MySingleButton.withPrefix(
                title: "Connect with Apple",
                icon: Image.asset(
                  'assets/icons/Apple_logo_black 1.png',
                ),
                backgroundColor: MyColors.buttonColor,
                onPressed: () {
                  controller.onApppleTapped();
                },
              ),
              const MyDivider.height(size: 2),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ? ",
                    style: MyFonts.ubuntuRegular16,
                  ),
                  InkWell(
                    onTap: () => controller.onSignUpTapped(),
                    child: Text(
                      "Sign up",
                      style: MyFonts.ubuntuRegular16.copyWith(
                        color: MyColors.logoPrincipal,
                      ),
                    ),
                  ),
                ],
              ),
              const MyDivider.height(size: 2),
            ],
          ).margin(horizontal: MyDecoration.marginHorizontal),
        ),
      ),
    );
  }
}
