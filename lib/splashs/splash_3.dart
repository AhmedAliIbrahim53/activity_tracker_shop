import 'package:flutter/material.dart';

import '../components/splash_button.dart';
import '../models/curve_painter.dart';
import '../splashs/splash_4.dart';

class Splash3 extends StatelessWidget {
  static const String id = '/splash-3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: CurvePainter(color: Color(0xFF4D5ADE)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Redeem\nCoins & Shop',
                      style: TextStyle(
                          color: Color(0xFF58B997),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Image(
                      image: AssetImage('assets/images/33.png'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Redeem coins to shop. Buy any product. \nGet a chance to win iPhone 11",
                      style: TextStyle(
                        color: Color(0xFF4D5ADE),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SplashButton(
                      title: 'Next',
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(Splash4.id);
                      },
                      textColor: Colors.white,
                      backgroundColor: Color(0xFF4D5ADE),
                    ),
                  )
                ],
              ),
            )),
      ),
      backgroundColor: Color(0xFFF2F2F1),
    );
  }
}
