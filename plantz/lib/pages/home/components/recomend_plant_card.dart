import 'package:flutter/material.dart';
import 'package:plantz/pages/details/details_page.dart';
import 'package:plantz/theme/constants.dart';

class ScrollableRecomendedPlants extends StatelessWidget {
  const ScrollableRecomendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            country: "RUSSIA",
            image: "assets/images/image_1.png",
            price: "400",
            title: "Samantha",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PlantDetailsPage()));
            },
          ),
          RecomendPlantCard(
            country: "China",
            image: "assets/images/image_3.png",
            price: "1999",
            title: "Diamond",
            onTap: () {},
          ),
          RecomendPlantCard(
            country: "Ukraine",
            image: "assets/images/image_2.png",
            price: "400",
            title: "Bot",
            onTap: () {},
          ),
          RecomendPlantCard(
            country: "India",
            image: "assets/images/image_3.png",
            price: "100",
            title: "Dalia",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
    required this.onTap,
  });

  final String title, country, price, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final boxSize = screen.width * 0.45;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxSize,
        // padding: const EdgeInsets.all(kDefaultPadding * 1.1),
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            // Image.asset(image),
            Container(
              width: boxSize,
              height: boxSize * 1.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 0.5),
                    topRight: Radius.circular(kDefaultPadding * 0.5),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.7),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 0.5,
                vertical: kDefaultPadding * 0.25,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.2),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultPadding * 0.5),
                    bottomRight: Radius.circular(kDefaultPadding * 0.5),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(title.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          )),
                      const Spacer(),
                      Text(
                        "\$$price",
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    country.toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
