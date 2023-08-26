import 'package:brew/themes/theme.dart';
import 'package:brew/widgets/bottom_navbar.dart';
import 'package:brew/widgets/home/big_title.dart';
import 'package:brew/widgets/home/coffee_tile.dart';
import 'package:brew/widgets/home/search_box.dart';
import 'package:brew/widgets/home/tab_bar.dart';
import 'package:brew/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    const double paddingX = 30.0;

    return Scaffold(
      backgroundColor: AppThemes.colors[AppColors.primary],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(paddingX),
            child: TopNavbar(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingX,
            ),
            child: BigTitleText(),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingX,
            ),
            child: SearchBox(),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: paddingX,
            ),
            child: Tabbar(
              onTap: (idx) {
                setState(() {
                  _selectedTab = idx;
                });
              },
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: paddingX,
            ),
            children: const [
              CoffeeTile(
                title: "Cappuchino",
                subTitle: "With oat milk",
                imagePath: "assets/images/1.0 x 1.0/4.png",
                price: "6.99",
              ),
              CoffeeTile(
                title: "Flat white",
                subTitle: "With milk",
                imagePath: "assets/images/1.0 x 1.0/2.png",
                price: "4.30",
              ),
              CoffeeTile(
                title: "Latte",
                subTitle: "With almond milk",
                imagePath: "assets/images/1.0 x 1.0/3.png",
                price: "6.50",
              ),
              CoffeeTile(
                title: "Black Coffee",
                subTitle: "With oat milk",
                imagePath: "assets/images/1.0 x 1.0/1.png",
                price: "4.99",
              ),
            ],
          )),
        ],
      )),
      bottomNavigationBar: const AppBottomNavbar(),
    );
  }
}
