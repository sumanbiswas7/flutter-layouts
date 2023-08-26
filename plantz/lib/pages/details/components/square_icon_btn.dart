import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantz/theme/constants.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kDefaultPadding * 2.5,
      height: kDefaultPadding * 2.5,
      padding: EdgeInsets.all(kDefaultPadding * 0.5),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
            ),
          ]),
      child: SvgPicture.asset(image),
    );
  }
}
