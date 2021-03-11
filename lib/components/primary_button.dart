import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  const PrimaryButton(
      {Key key, this.text, this.press, this.color, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
