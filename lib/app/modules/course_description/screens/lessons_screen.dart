import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/my_decorations.dart';
import '../widgets/lesson_card_widget.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Part I - Understanding Paradigms",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MyFonts.ubuntuRegular12.copyWith(
                          color: MyColors.textInput,
                        ),
                      ),
                    ),
                    const MyDivider.width(),
                    Text(
                      "1 Hour",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: MyFonts.ubuntuRegular12.copyWith(
                        color: MyColors.textInput,
                      ),
                    ),
                  ],
                ),
                const MyDivider.height(),
                ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return const LessonCard();
                  },
                  separatorBuilder: (_, __) => const MyDivider.height(),
                  itemCount: 4,
                ),
              ],
            );
          },
          separatorBuilder: (_, __) => const MyDivider.height(size: 4),
          itemCount: 2,
        ),
      ],
    ).margin(
      horizontal: MyDecoration.marginHorizontal,
      vertical: MyDecoration(context).defaultPadding * 2,
    );
  }
}
