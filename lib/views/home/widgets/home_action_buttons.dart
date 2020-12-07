import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_me/shared/colors.dart';
import '../../all_spots/all_spots_view.dart';
import '../../create_spot/create_spot_view.dart';
import 'action_button.dart';

class HomeActionButtonsWidget extends StatelessWidget {
  const HomeActionButtonsWidget({
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
              child: ActionButtonWidget(
                text: "Need volunteers",
                onPressed: () {
                  Get.to(AllSpotsView());
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
              child: ActionButtonWidget(
                text: "Want to volunteer",
                onPressed: () {
                  Get.to(CreateSpotView());
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
