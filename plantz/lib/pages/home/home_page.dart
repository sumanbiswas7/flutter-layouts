import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantz/components/bottom_navbar.dart';
import 'package:plantz/pages/home/components/featured_plant_card.dart';
import 'package:plantz/pages/home/components/recomend_plant_card.dart';
import 'package:plantz/pages/home/components/title_with_more_btn.dart';
import 'package:plantz/pages/home/components/top_header_and_search.dart';
import 'package:plantz/theme/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: buildAppBar(scaffoldKey),
      bottomNavigationBar: AppBottomNavbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopHeaderAndSearch(),
            const SizedBox(height: kDefaultPadding * 2), // Margin
            TitleWithMoreButton(title: "Recomended", onPress: () {}),
            const SizedBox(height: kDefaultPadding), // Margin
            const ScrollableRecomendedPlants(),
            TitleWithMoreButton(title: "Featured Plants", onPress: () {}),
            const SizedBox(height: kDefaultPadding), // Margin
            const ScrollableFeaturedPlants()
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(GlobalKey<ScaffoldState> key) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () => key.currentState?.openDrawer()),
  );
}
