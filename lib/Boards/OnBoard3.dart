import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:RediExpress/ThemesFolder/style.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';

class OnBoard3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: 
            SvgPicture.asset('assets/OnBoard3.svg'),
          ),
          SizedBox(height: 30,),
          Container(
            width: 300,
            child: Text('Real-time Tracking', style: large_blue(), textAlign: TextAlign.center,),
          ),
          Container(
            width: 300,
            child: Text('Track your packages/items from the comfort of your home till final destination', style: medium_black(), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 80,),
          Container(
            width: 350,
            height: 50,
            decoration: filledboxdecoration(),
            child: TextButton(onPressed: (){}, child: Text('Sign Up', style: button_white()),)
          ),
          SizedBox(height: 5),
          Container(
            width: 250,
            child: Row(
              children: [
                Container(
                  child: Text('Already have an account?', style: small_grey()),
                ),
                Container(
                  child: TextButton(onPressed: (){}, child: Text('Sign in', style: button_blue(),)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}