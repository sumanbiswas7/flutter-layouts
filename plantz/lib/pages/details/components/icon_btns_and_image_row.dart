import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantz/pages/details/components/square_icon_btn.dart';
import 'package:plantz/theme/constants.dart';

class IconBtnsAndImageRow extends StatelessWidget {
  const IconBtnsAndImageRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left container: back button with bottom icons
          Container(
            margin: const EdgeInsets.only(left: kDefaultPadding),
            padding: const EdgeInsets.only(top: kDefaultPadding),
            height: screen.height * 0.8,
            child: Column(
              children: [
                IconButton(
                  icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: kDefaultPadding), // Margin-top
                const SquareIconButton(image: "assets/icons/sun.svg"),
                const SquareIconButton(image: "assets/icons/icon_2.svg"),
                const SquareIconButton(image: "assets/icons/icon_3.svg"),
                const SquareIconButton(image: "assets/icons/icon_4.svg"),
              ],
            ),
          ),
          // Right container: plant image
          Container(
            height: screen.height * 0.8,
            width: screen.width * 0.6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding),
                topLeft: Radius.circular(kDefaultPadding),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/img.png"),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
