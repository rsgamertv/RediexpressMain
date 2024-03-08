import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projecttoreview/ThemesFolder/style.dart';
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
            SvgPicture.asset('assets/OnBoard1.svg')
            ),
               SizedBox(height: 30,),
            Container(
              width: 300,
              child: Text('Quick Delivery At Your Doorstep', style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
            ),
                  Container(
              width: 300,
              child: Text('Enjoy quick pick-up and delivery to your destination', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
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
                        TextButton(onPressed: null, child: Text('Skip' , style: Theme.of(context).textTheme.titleSmall))
                      ),
                      Container(
                        decoration: filledboxdecoration(),
                        width: 120,
                        height: 50,
                        child: TextButton(onPressed: null, child: Text('Next', style: Theme.of(context).textTheme.titleMedium,)),
                      )
                    ],
                ),
            )       
          ],
        ),
     );
  }
}