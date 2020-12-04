import 'package:flutter/material.dart';

import '../../shared/modals.dart';

class NoInternetCard extends StatelessWidget {
  const NoInternetCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModalCard(
      isSmall: true,
      child: Column(children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 19.02),
          child: Text(
            '''Please make sure you are connected to the internet''',
            softWrap: true,
          ),
        ),
      ]),
    );
  }
}
