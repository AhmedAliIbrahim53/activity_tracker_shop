import 'package:flutter/material.dart';

import '../components/hypered_button.dart';
import '../models/curve_painter.dart';
import '../screens/controller.dart';

class PermissionRequestScreen extends StatelessWidget {
  static const String id = '/permission-request-screen';
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Access Required',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      PermissionContainer(
                        widget: Image.network(
                            'https://i.pinimg.com/originals/8c/03/0b/8c030bd6bd7ee87ad41485e3c7598dd4.png'),
                        title: 'Google Fit',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PermissionContainer(
                        widget: Icon(
                          Icons.location_on,
                          color: Color(0xFF4D5ADE),
                        ),
                        title: 'Google Fit',
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Controller.id);
                          },
                          child: Text('Grant Permission'),
                          textColor: Color(0xFF4D5ADE),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      HyperedButton(
                        onTap: () {},
                        title: Text(
                          'More Information',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
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

class PermissionContainer extends StatelessWidget {
  final Widget widget;
  final String title;
  PermissionContainer({this.widget, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            child: widget,
          ),
          SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
