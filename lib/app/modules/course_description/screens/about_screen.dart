import 'package:alemni/app/modules/course_description/controllers/course_description_controller.dart';
import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AboutScreen extends GetView<CourseDescriptionController> {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Course",
          style: MyFonts.ubuntuRegular14,
        ),
        const MyDivider.height(),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat euismod purus semper molestie viverra ullamcorper scelerisque nisi. Enim massa, lorem tempus morbi viverra at nisl pretium enim. Ipsum aliquet amet nec elit tempor a tempor mattis aliquam. Mattis arcu pharetra eget ullamcorper ante.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat euismod purus semper molestie viverra ullamcorper scelerisque nisi.',
          style: MyFonts.ubuntuLight12,
        ),
        const MyDivider.height(size: 2),
        Text(
          "Prerequisites",
          style: MyFonts.ubuntuRegular14,
        ),
        const MyDivider.height(),
        Text(
          '- Personal Computer.\n- No previous knowledge on coding.',
          style: MyFonts.ubuntuLight12,
        ),
        const MyDivider.height(size: 2),
        Text(
          "Teacher",
          style: MyFonts.ubuntuRegular14,
        ),
        const MyDivider.height(),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0x10888888),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(
                100.sw(context),
              ),
            ),
          ),
          child: Row(
            children: [
              const Image(
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
              ).borderRadius(
                all: 100.sw(context),
              ),
              const MyDivider.width(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jacob Jones",
                      style: MyFonts.ubuntuRegular12,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const MyDivider.height(),
                    Text(
                      "Full Stack Developer at ibm",
                      style: MyFonts.ubuntuRegular12,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              const MyDivider.width(),
              SizedBox(
                width: 73,
                height: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SizedBox(
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/course_description/Message Align Left.svg',
                        ),
                      ),
                    ).button(
                      context,
                      onPressed: () {
                        controller.onTeacherMessageTapped();
                      },
                      backgroundColor: MyColors.purple2nd,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ).margin(
      horizontal: MyDecoration.marginHorizontal,
      vertical: MyDecoration(context).defaultPadding * 2,
    );
  }
}
