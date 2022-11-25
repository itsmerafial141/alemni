import 'package:alemni/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/my_decorations.dart';
import '../widgets/review_card_widget.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (_, index) {
            return const ReviewCard();
          },
          separatorBuilder: (_, __) => const SizedBox(
            width: double.infinity,
            height: 1,
          ).backgroundColor(
            color: const Color(0xffDFDFDF),
          ),
          itemCount: 4,
        ),
      ],
    ).margin(
      horizontal: MyDecoration.marginHorizontal,
      vertical: MyDecoration(context).defaultPadding * 2,
    );
  }
}
