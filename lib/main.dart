import 'package:flutter/material.dart';

import './helpers/custom_page_transition_builder.dart';
import './screens/controller.dart';
import './screens/log_in_screen.dart';
import './screens/permission_request_screen.dart';
import './splashs/splash_1.dart';
import './splashs/splash_2.dart';
import './splashs/splash_3.dart';
import './splashs/splash_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CustomPageTransitionBuilder(),
          TargetPlatform.iOS: CustomPageTransitionBuilder(),
        }),
      ),
      routes: {
        '/': (ctx) => Splash1(),
        Splash2.id: (ctx) => Splash2(),
        Splash3.id: (ctx) => Splash3(),
        Splash4.id: (ctx) => Splash4(),
        LogInScreen.id: (ctx) => LogInScreen(),
        PermissionRequestScreen.id: (ctx) => PermissionRequestScreen(),
        Controller.id: (ctx) => Controller(),
      },
    );
  }
}
