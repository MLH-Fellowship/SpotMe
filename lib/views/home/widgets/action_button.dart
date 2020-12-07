import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        this.text,
        style: const TextStyle(fontSize: 16),
      ),
      padding: const EdgeInsets.all(17),
      color: this.color,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: color),
      ),
      onPressed: onPressed,
    );
  }
}
