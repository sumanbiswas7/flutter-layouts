import 'package:flutter/material.dart';
import 'package:plantz/theme/constants.dart';

class BottomBuyAndDescBtn extends StatelessWidget {
  const BottomBuyAndDescBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Row(
      children: [
        // Description button
        SizedBox(
          width: screen.width / 2,
          height: 50,
          child: ElevatedButton(
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kDefaultPadding)))),
                  backgroundColor: MaterialStatePropertyAll(kPrimaryColor)),
              onPressed: () {},
              child: const Text("Buy Now")),
        ),

        // Buy now button
        SizedBox(
            width: screen.width / 2,
            height: 50,
            child: const Center(
              child: Text(
                "Description",
                style: TextStyle(color: Colors.black),
              ),
            )),
      ],
    );
  }
}
