import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final String price;

  const CoffeeTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imagePath,
      required this.price});

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  bool isAdded = false;

  final double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: screenHeight * 0.25,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: AppThemes.colors[AppColors.card],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(widget.imagePath),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 13.0,
                color: AppThemes.colors[AppColors.textPrimary],
              ),
            ),
            Text(
              widget.subTitle,
              style: TextStyle(
                fontSize: 10.0,
                color: AppThemes.colors[AppColors.textSecondary],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$",
                        style: TextStyle(
                          color: AppThemes.colors[AppColors.accent],
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0,
                        ),
                      ),
                      TextSpan(
                        text: widget.price,
                        style: TextStyle(
                          color: AppThemes.colors[AppColors.textPrimary],
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isAdded = !isAdded;
                    });
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius / 2),
                      color: AppThemes.colors[AppColors.accent],
                    ),
                    child: Icon(isAdded ? Icons.remove : Icons.add),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
