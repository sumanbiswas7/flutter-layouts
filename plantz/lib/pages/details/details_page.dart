import 'package:flutter/material.dart';
import 'package:plantz/pages/details/components/bottom_buy_and_desc.dart';
import 'package:plantz/pages/details/components/icon_btns_and_image_row.dart';
import 'package:plantz/pages/details/components/plant_name_and_desc.dart';
import 'package:plantz/theme/constants.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IconBtnsAndImageRow(),
            PlantNameAndDesc(),
            SizedBox(height: kDefaultPadding * 1.1),
            BottomBuyAndDescBtn(),
          ],
        ),
      ),
    );
  }
}
