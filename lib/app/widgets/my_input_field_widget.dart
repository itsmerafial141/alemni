import 'package:alemni/core/themes/my_color_swatch.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/themes/my_fonts.dart';
import 'my_divider_widget.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    Key? key,
    required this.controller,
    required this.title,
    required this.hint,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.textInputAction,
    this.textInputType,
    this.focusNode,
    this.noTitle = false,
    this.maxLines,
    this.outlined = false,
    this.prefixIcon,
    this.onChanged,
    this.readOnly,
    this.onTap,
  }) : super(key: key);

  const MyInputField.outlined({
    Key? key,
    required this.controller,
    required this.title,
    required this.hint,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.textInputAction,
    this.textInputType,
    this.focusNode,
    this.noTitle = false,
    this.maxLines,
    this.outlined = true,
    this.prefixIcon,
    this.onChanged,
    this.readOnly,
    this.onTap,
  }) : super(key: key);
  const MyInputField.noTitle({
    Key? key,
    required this.controller,
    this.title = "",
    required this.hint,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.textInputAction,
    this.textInputType,
    this.focusNode,
    this.noTitle = true,
    this.maxLines,
    this.outlined = false,
    this.prefixIcon,
    this.onChanged,
    this.readOnly,
    this.onTap,
  }) : super(key: key);
  const MyInputField.outlinedNoTitle({
    Key? key,
    required this.controller,
    this.title = "",
    required this.hint,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.textInputAction,
    this.textInputType,
    this.focusNode,
    this.noTitle = true,
    this.maxLines,
    this.outlined = true,
    this.prefixIcon,
    this.onChanged,
    this.readOnly,
    this.onTap,
  }) : super(key: key);
  final TextEditingController controller;
  final String? title;
  final String hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final bool? noTitle;
  final int? maxLines;
  final bool? outlined;
  final bool? readOnly;
  final Function(String)? onChanged;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var psuffixIcon = suffixIcon;
    var pprefixIcon = prefixIcon;
    var pobsecureText = obscureText ?? false;
    var pinputFormatters = inputFormatters ?? [];
    var ptextInputAction = textInputAction ?? TextInputAction.done;
    var ptextInputType = textInputType ?? TextInputType.text;
    var pFocusNode = focusNode;
    var pNoTitle = noTitle ?? false;
    var pMaxLines = maxLines ?? 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pNoTitle == false
            ? Column(
                children: [
                  Text(
                    title!,
                    style: MyFonts.ubuntuRegular12,
                  ),
                  const MyDivider.height(),
                ],
              )
            : const SizedBox(),
        TextField(
          controller: controller,
          onTap: onTap,
          obscureText: pobsecureText,
          inputFormatters: pinputFormatters,
          textInputAction: ptextInputAction,
          keyboardType: ptextInputType,
          focusNode: pFocusNode,
          maxLines: pMaxLines,
          onChanged: onChanged,
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: psuffixIcon,
            prefixIcon: pprefixIcon,
            border: border(code: 110),
            enabledBorder: border(code: 111),
            errorBorder: border(code: 112),
            focusedBorder: border(code: 113),
            focusedErrorBorder: border(code: 115),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder border({required int code}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: outlined! ? 1 : 0,
        color: colorState(code: code),
      ),
      borderRadius: BorderRadius.circular(
        MyDecoration.defaultTextFieldBorderRadius,
      ),
    );
  }

  Color colorState({required int code}) {
    switch (code) {
      case 110:
        return MyColorSwatch.disable.shade400;
      case 111:
        return MyColorSwatch.disable.shade400;
      case 112:
        return MyColorSwatch.danger;
      case 113:
        return MyColors.logoPrincipal;
      case 114:
        return MyColorSwatch.disable.shade400;
      case 115:
        return MyColorSwatch.danger;
      default:
        return MyColorSwatch.disable.shade400;
    }
  }
}

/* 
  Colors input code state:
  [
    110 = Default Border,
    111 = Enabled Border,
    112 = Error Border,
    113 = Focused Border,
    114 = Disabled Border,
    115 = Focused Error Border
  ]
*/
