import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final double fontSize, elevation;
  final Function onTap;
  final btncolor;
  final splashColor;
  final textColor;
  final padding;
  final double btnBorderRadius;

  CustomBtn({
    @required this.text,
    this.fontSize = 16.0,
    this.elevation,
    @required this.onTap,
    this.btncolor = Colors.orange,
    this.splashColor = Colors.orangeAccent,
    this.textColor,
    @required this.btnBorderRadius,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        padding: padding,
        color: btncolor,
        splashColor: splashColor,
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(btnBorderRadius),
        ),
      ),
    );
  }
}
