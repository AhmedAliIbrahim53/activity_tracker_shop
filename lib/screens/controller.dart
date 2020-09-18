import 'package:flutter/material.dart';

import '../screens/battle_field_screen.dart';
import '../screens/friends_screen.dart';
import '../screens/homeScreen.dart';
import '../screens/profile_screen.dart';
import '../screens/shop_screen.dart';

class Controller extends StatefulWidget {
  static const String id = '/home-screen';

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FriendsScreen(),
    ShopScreen(),
    BattleFieldScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xff4B58DC),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            title: Text(
              'Friends',
              style: TextStyle(
                color: Color(0xff4B58DC),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
            ),
            title: Text(
              'Shop',
              style: TextStyle(
                color: Color(0xff4B58DC),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment,
            ),
            title: Text(
              'BattleField',
              style: TextStyle(
                color: Color(0xff4B58DC),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color(0xff4B58DC),
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 34,
        selectedFontSize: 12,
        selectedItemColor: Color(0xff4B58DC),
        unselectedItemColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Color(0xFF4B58DC),
    );
  }
}
