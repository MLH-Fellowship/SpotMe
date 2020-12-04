import 'package:flutter/material.dart';

class ModalCard extends StatelessWidget {
  const ModalCard({Key key, @required this.child, this.isSmall = false}) : super(key: key );
  final Widget child;
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: isSmall ? 100 : 219,
        width: 336,
        child: Card(margin: const EdgeInsets.all(3), child: child),
      ),
    );
  }
}
