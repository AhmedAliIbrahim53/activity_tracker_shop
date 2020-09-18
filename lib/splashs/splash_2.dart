import 'package:flutter/material.dart';

import '../components/splash_button.dart';
import '../models/curve_painter.dart';
import '../splashs/splash_3.dart';

class Splash2 extends StatelessWidget {
  static const String id = '/splash-2';
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
                      'Tap your\nscreen',
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
                        Positioned(
                          child: Text(
                            'Tapping\nWorks\nJust fine',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFF58B997),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          width: 100,
                          height: 150,
                          top: 120,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image(
                            image: AssetImage('assets/images/22.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Don't stop earning. Now Tap your screen \nto earn more coins.",
                      style: TextStyle(
                        color: Color(0xFF4D5ADE),
                        fontSize: 20,
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
                              .pushReplacementNamed(Splash3.id);
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
