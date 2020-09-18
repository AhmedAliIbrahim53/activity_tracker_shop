import 'package:flutter/material.dart';

class SocialLogInButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  SocialLogInButton({this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.network(imageUrl),
      ),
    );
  }
}
