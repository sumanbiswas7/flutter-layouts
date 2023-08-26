import 'package:flutter/material.dart';
import 'package:plantz/theme/constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding / 6),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Positioned(
        bottom: kDefaultPadding / 6,
        left: 0,
        right: 0,
        child: Container(
          margin: const EdgeInsets.only(right: kDefaultPadding / 6),
          color: kPrimaryColor.withOpacity(0.3),
          height: 4,
        ),
      )
    ]);
  }
}
