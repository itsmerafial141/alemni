import 'package:alemni/app/widgets/my_divider_widget.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Image(
              height: 28,
              width: 28,
              image: NetworkImage(
                'https://picsum.photos/id/200/1080/1980',
              ),
              fit: BoxFit.cover,
            ).borderRadius(
              all: 100.sw(context),
            ),
            const MyDivider.width(),
            Expanded(
              child: Text(
                "Jane Cooper",
                style: MyFonts.ubuntuMedium14,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const MyDivider.width(),
            Text(
              "10mn ago",
              style: MyFonts.ubuntuLight12.copyWith(
                color: MyColors.textInput,
              ),
            ),
            const MyDivider.width(),
            SvgPicture.asset(
              'assets/icons/course_description/medal.svg',
            ),
          ],
        ),
        const MyDivider.height(),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh amet, commodo, sit tellus dictum neque, ullamcorper ultrices dolor. Blandit pellentesque at urna dui sit.",
          style: MyFonts.ubuntuLight12,
          textAlign: TextAlign.justify,
        ),
        const MyDivider.height(),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/course_description/love.svg',
              ),
              splashRadius: 15,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
            ),
            const MyDivider.width(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/course_description/corner-up-right.svg',
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
              splashRadius: 15,
            ),
            const MyDivider.width(size: .5),
            Text(
              'Reply',
              style: MyFonts.ubuntuRegular10.copyWith(
                color: MyColors.iconColorsMessage,
              ),
            ),
          ],
        )
      ],
    ).margin(horizontal: 37, vertical: 16);
  }
}
