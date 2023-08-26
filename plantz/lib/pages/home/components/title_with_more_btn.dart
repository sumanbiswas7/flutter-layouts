import 'package:flutter/material.dart';
import 'package:plantz/pages/home/components/title_with_custom_underline.dart';
import 'package:plantz/theme/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  final VoidCallback onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            title: title,
          ),
          const Spacer(),
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
              backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
            ),
            onPressed: onPress,
            child: const Text("More"),
          )
        ],
      ),
    );
  }
}
