import 'package:flutter/material.dart';

import '../../shared/buttons.dart';
import '../../shared/modals.dart';

class RelocationCard extends StatelessWidget {
  const RelocationCard({Key key, @required this.onPressedSave})
      : super(key: key);

  final VoidCallback onPressedSave;

  @override
  Widget build(BuildContext context) {
    return ModalCard(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 19.02),
            child: Text(
              '''Please select a location from the map for your pin to be relocated. You can select a location by tapping on the map.''',
              softWrap: true,
            ),
          ),
          StyledButton(
            onPressed: onPressedSave,
            text: 'SAVE',
          ),
        ],
      ),
    );
  }
}
