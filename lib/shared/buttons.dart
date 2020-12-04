import 'package:flutter/material.dart';
import '../constants/constants.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({Key key, @required this.text, @required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
        BoxShadow(
          color: Constants.color.greenShadow,
          blurRadius: 6,
          offset: const Offset(0, 3),
        ),
      ]),
      child: RaisedButton(
        onPressed: onPressed,
        splashColor: Constants.color.greenShadow,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            text,
            softWrap: true,
            style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold, color: Constants.color.light),
          ),
        ),
      ),
    );
  }
}
