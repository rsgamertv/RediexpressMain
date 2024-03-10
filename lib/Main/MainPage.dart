import 'package:RediExpress/Authorization/Authorization.dart';
import 'package:RediExpress/Authorization/Registration.dart';
import 'package:RediExpress/Packages/AllPackages.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        home: AllPackages(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: small_blue(),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: small_grey(),
        showUnselectedLabels: true,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Icon(Icons.wallet),
          ),
          BottomNavigationBarItem(
            label: 'Track',
            icon: Icon(Icons.car_crash_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}