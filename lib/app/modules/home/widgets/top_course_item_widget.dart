import 'package:alemni/core/utils/extensions/double_extension.dart';
import 'package:alemni/core/utils/extensions/num_extension.dart';
import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/my_decorations.dart';
import '../../../../core/themes/my_fonts.dart';
import '../../../widgets/my_divider_widget.dart';

class TopCourseItem extends StatelessWidget {
  const TopCourseItem({
    Key? key,
    required this.onTap,
    required this.onTopCourseBookmarkTapped,
  }) : super(key: key);

  final Function() onTap;
  final Function() onTopCourseBookmarkTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(21.18),
      child: Container(
        height: double.infinity,
        width: 55.sw(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.18),
          color: Colors.white,
          boxShadow: [
            1.0.boxShadow,
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: NetworkImage(
                      'https://picsum.photos/id/237/200/300',
                    ),
                    fit: BoxFit.cover,
                  ).borderRadius(verticalTop: 21.18),
                  Align(
                    alignment: Alignment.topRight,
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: onTopCourseBookmarkTapped,
                          borderRadius: BorderRadius.circular(
                            100.sw(context),
                          ),
                          child: Container(
                            height: 22.59,
                            width: 22.59,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(
                              vertical: 2.sw(context),
                              horizontal: 4.sw(context),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                100.sw(context),
                              ),
                              color: MyColors.purple2nd,
                            ),
                            child: const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const MyDivider.height(size: .5),
                  SizedBox(
                    width: 100.sw(context),
                    child: Text(
                      "Learn React.js for beginners",
                      style: MyFonts.ubuntuRegular14,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const MyDivider.height(size: .5),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
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
                  )
                ],
              ).margin(horizontal: MyDecoration.marginHorizontal),
            ),
          ],
        ),
      ),
    );
  }
}
