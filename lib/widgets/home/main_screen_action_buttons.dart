import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_me/colors.dart';
import 'package:spot_me/widgets/all_spots_screen/all_spots_screen.dart';
import 'package:spot_me/widgets/create_spot_screen/create_spot_screen.dart';

import 'action_button.dart';

class MainScreenActionButtons extends StatelessWidget {
  const MainScreenActionButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Hero(
              tag: "need",
              child: ActionButton(
                text: "Need volunteers",
                onPressed: () {
                  Get.to(AllSpotsScreen());
                },
                color: AppColors.blueColor,
              ),
            ),
            SizedBox(width: 25),
            Container(
              width: 1,
              height: 40,
              color: Colors.grey.withOpacity(0.6),
            ),
            SizedBox(width: 25),
            Hero(
              tag: "create",
              child: ActionButton(
                text: "Want to volunteer",
                onPressed: () {
                  Get.to(CreateSpotScreen());
                },
                color: AppColors.magentaColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
