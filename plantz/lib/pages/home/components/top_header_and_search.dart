import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantz/theme/constants.dart';

class TopHeaderAndSearch extends StatelessWidget {
  const TopHeaderAndSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final double topContHeight = screen.height * 0.2;
    const double searchHeight = 54;

    return SizedBox(
      height: topContHeight,
      child: Stack(children: [
        // container height from appbar to 1/2 of searchbox, change color to see
        Container(
          height: topContHeight - searchHeight / 2,
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: 36 + kDefaultPadding,
          ),
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )),
          child: Row(children: [
            const Text("Hello, Suman!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                  color: Colors.white,
                )),
            const Spacer(),
            Image.asset("assets/images/logo.png", width: 50),
          ]),
        ),

        // Positioned at the bottom of the 20% screen-height
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SearchBox(searchHeight: searchHeight),
        ),
      ]),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.searchHeight,
  });

  final double searchHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: searchHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  )),
            ),
          ),
          SvgPicture.asset("assets/icons/search.svg"),
        ],
      ),
    );
  }
}
