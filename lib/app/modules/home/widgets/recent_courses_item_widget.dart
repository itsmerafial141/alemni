import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/my_fonts.dart';
import '../../../widgets/my_divider_widget.dart';

class RecentCoursesItem extends StatelessWidget {
  const RecentCoursesItem({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        width: double.infinity,
        height: 11.sh(context),
        decoration: BoxDecoration(
          color: const Color(0xff888888).withOpacity(.05),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: const Image(
                height: double.infinity,
                image: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
                fit: BoxFit.cover,
              ).borderRadius(horizontalLeft: 5),
            ),
            const MyDivider.width(size: 2),
            Expanded(
              flex: 7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyDivider.height(size: .5),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Learn React.js for beginners",
                            style: MyFonts.ubuntuRegular14,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const MyDivider.height(size: .5),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\$30  ",
                                style: MyFonts.ubuntuBold10,
                              ),
                              TextSpan(
                                text: "\$42  ",
                                style: MyFonts.ubuntuBold8.copyWith(
                                  color: MyColors.textInput,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const MyDivider.height(size: .25),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: MyColors.star,
                              size: 7,
                            ),
                            const MyDivider.width(size: .2),
                            Text(
                              "4.5",
                              style: MyFonts.ubuntuRegular8,
                            ),
                            const MyDivider.width(
                              size: .5,
                            ),
                            Text(
                              "|",
                              style: MyFonts.ubuntuRegular8,
                            ),
                            const MyDivider.width(
                              size: .5,
                            ),
                            Text(
                              "6k students",
                              style: MyFonts.ubuntuRegular8.copyWith(
                                color: MyColors.textInput,
                              ),
                            ),
                          ],
                        ),
                        const MyDivider.width(),
                      ],
                    ),
                  ),
                  const MyDivider.width(),
                  Text(
                    "Programming",
                    style: MyFonts.ubuntuRegular8.copyWith(
                      color: Colors.white,
                    ),
                  )
                      .margin(horizontal: 10, vertical: 8)
                      .backgroundColor(
                        color: MyColors.logoPrincipal,
                      )
                      .borderRadius(
                        all: 100.sw(context),
                      ),
                ],
              ),
            ),
            const MyDivider.width(size: 2),
            const SizedBox(
              height: double.infinity,
              width: 4,
            )
                .backgroundColor(color: Colors.black)
                .borderRadius(horizontalRight: 5)
          ],
        ),
      ),
    );
  }
}
