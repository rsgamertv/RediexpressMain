import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:RediExpress/core/Styles/Style.dart';
@RoutePage()
class OnBoard1 extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
  return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              alignment: Alignment.topCenter,
              child: 
            SvgPicture.asset('assets/OnBoard1.svg')
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              child: Text('Quick Delivery At Your Doorstep', style: large_blue(), textAlign: TextAlign.center,),
            ),
            Container(
              width: 300,
              child: Text('Enjoy quick pick-up and delivery to your destination', style: medium_black(), textAlign: TextAlign.center,),
            ),
            SizedBox(height: 80,),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: decoration(),
                        width: 120,
                        height: 50,
                        child:
                        TextButton(onPressed: (){
                          Navigator.of(context).pushNamed('/OnBoard3');
                        }, child: Text('Skip' , style: button_blue()))
                      ),
                      Container(
                        decoration: filledboxdecoration(),
                        width: 120,
                        height: 50,
                        child: TextButton(onPressed: (){
                            Navigator.of(context).pushNamed('/OnBoard2');
                        }, child: Text('Next', style: button_white())),
                      )
                    ],
                ),
            )       
          ],
        ),
     );
  }
}