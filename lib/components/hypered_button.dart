import 'package:flutter/material.dart';

class HyperedButton extends StatelessWidget {
  final Text title;
  final VoidCallback onTap;

  HyperedButton({this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: title,
    );
  }
}
