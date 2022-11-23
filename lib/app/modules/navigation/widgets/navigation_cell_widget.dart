import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/themes/my_colors.dart';
import '../../../widgets/my_divider_widget.dart';

class NavigationCell extends StatelessWidget {
  const NavigationCell({
    Key? key,
    required this.onTap,
    required this.iconAsset,
    required this.title,
    required this.index,
    required this.controllerIndicator,
  }) : super(key: key);

  final Function() onTap;
  final String iconAsset;
  final String title;
  final int controllerIndicator;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(),
                SvgPicture.asset(
                  iconAsset,
                  color: controllerIndicator == index
                      ? MyColors.logoPrincipal
                      : const Color(0xff0C0C0C),
                ),
                const MyDivider.height(),
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 12.76,
                    color: controllerIndicator == index
                        ? MyColors.logoPrincipal
                        : const Color(0xff0C0C0C),
                  ),
                ),
                const Spacer(),
              ],
            ),
            if (controllerIndicator == index)
              Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  children: [
                    Image.asset('assets/icons/navigation/Union.png'),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
