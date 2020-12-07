import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_me/shared/colors.dart';

import '../../create_spot/create_spot_view.dart';
import 'action_button.dart';

class HomeActionButtonsWidget extends StatelessWidget {
  final Function() onWantToVolunteerPressed;

  const HomeActionButtonsWidget(
      {Key key, @required this.onWantToVolunteerPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            ActionButtonWidget(
              text: "Want to volunteer",
              onPressed: onWantToVolunteerPressed,
              color: AppColors.blue,
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
                text: "Need volunteers",
                color: AppColors.magenta,
                onPressed: () {
                  Get.to(CreateSpotView());
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
