import 'package:flutter/material.dart';

import '../components/splash_button.dart';
import '../models/curve_painter.dart';
import '../splashs/splash_2.dart';

class Splash1 extends StatelessWidget {
  static const String id = '/splash-1';
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
                      'Shake your\nphone',
                      style: TextStyle(
                          color: Color(0xFF58B997),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Stack(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/11.png'),
                        ),
                        Positioned(
                          height: 100,
                          width: 100,
                          top: MediaQuery.of(context).size.height * 0.2,
                          right: 0,
                          child: Text(
                            'Earn coins\nJust with a shake',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFF58B997),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Tired of walking?\nshake your phone to earn coins.',
                      style: TextStyle(
                        color: Color(0xFF4D5ADE),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SplashButton(
                        title: 'Skip',
                        onTap: () {},
                        textColor: Color(0xFF4D5ADE),
                        backgroundColor: Color(0xFFF2F2F1),
                        borderColor: Color(0xFF4D5ADE),
                      ),
                      SplashButton(
                        title: 'Next',
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Splash2.id);
                        },
                        textColor: Colors.white,
                        backgroundColor: Color(0xFF4D5ADE),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
      backgroundColor: Color(0xFFF2F2F1),
    );
  }
}
