import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:RediExpress/core/Styles/Style.dart';
class OnBoard2 extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
  return Scaffold(
          appBar: AppBar(),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: 
            SvgPicture.asset('assets/OnBoard2.svg')
            ),
               SizedBox(height: 30,),
            Container(
              width: 300,
              child: Text('Flexible Payment', style: large_blue(), textAlign: TextAlign.center,),
            ),
                  Container(
              width: 300,
              child: Text('Different modes of payment either before and after delivery without stress', style: medium_black(), textAlign: TextAlign.center,),
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
                        TextButton(onPressed: null, child: Text('Skip' , style: button_blue()))
                      ),
                      Container(
                        decoration: filledboxdecoration(),
                        width: 120,
                        height: 50,
                        child: TextButton(onPressed: (){
                          Navigator.of(context).pushNamed('/OnBoard3');
                        }, child: Text('Next', style: button_white())),
                      ),
                    ],
                ),
            )       
          ],
        ),
     );
  }
}