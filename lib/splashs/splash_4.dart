import 'package:flutter/material.dart';

import '../components/splash_button.dart';
import '../models/curve_painter.dart';
import '../screens/log_in_screen.dart';

class Splash4 extends StatelessWidget {
  static const String id = '/splash-4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: CurvePainter(color: Color(0xFFF2F2F1)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'LOGO',
                      style: TextStyle(
                          color: Color(0xFF58B997),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image(
                      image: AssetImage('assets/images/44.png'),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SplashButton(
                        title: 'Log In',
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LogInScreen.id);
                        },
                        textColor: Color(0xFF4D5ADE),
                        backgroundColor: Colors.white,
                        width: 200,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SplashButton(
                        title: 'Create account',
                        onTap: () {},
                        textColor: Colors.white,
                        backgroundColor: Color(0xFF4D5ADE),
                        borderColor: Colors.white,
                        width: 200,
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
      backgroundColor: Color(0xFF4D5ADE),
    );
  }
}
