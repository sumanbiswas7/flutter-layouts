import 'package:flutter/material.dart';
import 'package:plantz/theme/constants.dart';

class ScrollableFeaturedPlants extends StatelessWidget {
  const ScrollableFeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            onTap: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            onTap: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final boxSize = screen.width * 0.65;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxSize,
        height: boxSize * 0.65,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
        ),
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
      ),
    );
  }
}
