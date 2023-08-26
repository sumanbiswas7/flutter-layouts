import 'package:flutter/material.dart';
import 'package:plantz/theme/constants.dart';

class PlantNameAndDesc extends StatelessWidget {
  const PlantNameAndDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Angelica",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Text(
                  "\$400",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kPrimaryColor),
                )
              ],
            ),
            Text(
              "Russia".toUpperCase(),
              style: TextStyle(
                fontSize: 17,
                color: kPrimaryColor.withOpacity(0.75),
              ),
            )
          ],
        ));
  }
}
