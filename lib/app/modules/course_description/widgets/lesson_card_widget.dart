import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            offset: const Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          const Image(
            image: NetworkImage(
              'https://picsum.photos/id/200/1080/1980',
            ),
            width: 74,
            fit: BoxFit.cover,
          ).borderRadius(horizontalLeft: 5),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: MyFonts.ubuntuRegular12,
                    children: [
                      TextSpan(
                        text: "Lesson 1 : ",
                        style: MyFonts.ubuntuRegular12.copyWith(
                          color: MyColors.logoPrincipal,
                        ),
                      ),
                      const TextSpan(
                        text: "Introduction to React.js",
                      ),
                    ],
                  ),
                ),
                const MyDivider.height(size: .5),
                Text(
                  "04mn : 15s",
                  style: MyFonts.ubuntuRegular10,
                ),
              ],
            ).margin(horizontal: MyDecoration.marginHorizontal / 2),
          ),
        ],
      ),
    );
  }
}
