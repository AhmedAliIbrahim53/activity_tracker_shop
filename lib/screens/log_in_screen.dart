import 'package:flutter/material.dart';

import '../components/hypered_button.dart';
import '../components/social_log_in_button.dart';
import '../components/splash_button.dart';
import '../models/curve_painter.dart';
import '../screens/permission_request_screen.dart';

class LogInScreen extends StatelessWidget {
  static const String id = '/log-in-screen';
  final GlobalKey<FormState> _formKey = GlobalKey();
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
                  Container(
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) => null,
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) => null,
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        SplashButton(
                          title: 'Log In',
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed(
                                PermissionRequestScreen.id);
                          },
                          textColor: Color(0xFF4D5ADE),
                          backgroundColor: Colors.white,
                          width: 180,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      HyperedButton(
                        onTap: () {},
                        title: Text(
                          'forget password',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
//                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SocialLogInButton(
                            onTap: () {},
                            imageUrl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialLogInButton(
                            onTap: () {},
                            imageUrl:
                                'https://i.pinimg.com/originals/8c/03/0b/8c030bd6bd7ee87ad41485e3c7598dd4.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          HyperedButton(
                            title: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
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
