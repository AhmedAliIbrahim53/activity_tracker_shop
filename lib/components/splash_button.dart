import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final VoidCallback onTap;
  final double width;

  SplashButton({
    @required this.onTap,
    this.title,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ? width : 120,
      child: RaisedButton(
        padding: EdgeInsets.all(0),
        onPressed: onTap,
        child: Text(title),
        textColor: textColor,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: borderColor != null ? borderColor : backgroundColor,
          ),
        ),
      ),
    );
  }
}
