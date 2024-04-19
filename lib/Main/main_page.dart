import 'package:RediExpress/Authorization/authorization.dart';
import 'package:RediExpress/Main/home_page.dart';
import 'package:RediExpress/Main/wallet_screen.dart';
import 'package:RediExpress/Registration/registration.dart';
import 'package:RediExpress/Main/profile_screen.dart';
import 'package:RediExpress/Main/track_page.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pagecontroller,
        children: [
          HomePage(),
          WalletScreen(),
          TrackPage(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        selectedLabelStyle: small_blue(),
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Theme.of(context).iconTheme.color,
        unselectedLabelStyle: small_grey(),
        showUnselectedLabels: true,
        onTap: _openPage,
        items:  [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home,),        
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
            icon: Icon(Icons.person,),
            
          ),
        ],
      ),
    );
  }
  void _openPage(int index){
    setState(() => _currentIndex = index);
    _pagecontroller.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.linear);
  }
}