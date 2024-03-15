import 'package:RediExpress/Models/PackageModel.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/Styles/Style.dart';

class ReadyPackageInfo extends StatefulWidget{
  PackageModel? packageModel;

  ReadyPackageInfo(PackageModel? packageModel){
    this.packageModel = packageModel;
  }

  @override
  State<ReadyPackageInfo> createState() => _ReadyPackageInfoState(packageModel);
}

class _ReadyPackageInfoState extends State<ReadyPackageInfo> {
  PackageModel? packageModel;

  _ReadyPackageInfoState(PackageModel? packageModel){
    this.packageModel = packageModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(), flex: 1,),
            Expanded(
                child: Text('Package information', style: large_blue(),),
                flex: 5,
            ),
            Expanded(
                child: Text('Origin details', style: medium_black(),),
                flex: 4,
            ),
            Expanded(
              child: Text(packageModel!.originCountry + ', ' +  packageModel!.originState + ', ' + packageModel!.originAddress, style: medium_grey(),),
              flex: 4,
            ),
            Expanded(
              child: Text(packageModel!.originPhoneNumber, style: medium_grey(),),
              flex: 4,
            ),
            Expanded(
              child: Text('Destination details', style: medium_black(),),
              flex: 4,
            ),
            Expanded(
              child: Text(packageModel!.destinationCountry + ', ' +  packageModel!.destinationState + ', ' + packageModel!.destinationAddress, style: medium_grey(),),
              flex: 4,
            ),
            Expanded(
              child: Text(packageModel!.destinationPhoneNumber, style: medium_grey(),),
              flex: 4,
            ),
            Expanded(
              child: Text('Other details', style: medium_black(),),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Package items', style:medium_grey()),
                  Spacer(),
                  Text(packageModel!.packageItems, style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Weight of items', style:medium_grey()),
                  Spacer(),
                  Text(packageModel!.weightOfItems.toString() + ' kg', style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Worth of items', style:medium_grey()),
                  Spacer(),
                  Text(packageModel!.worthOfItems.toString(), style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
                flex: 2,
            ),
            Expanded(
              child: Text('Charges', style: large_blue(),),
              flex: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Delivery charges', style:medium_grey()),
                  Spacer(),
                  Text('2000', style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Instant delivery', style:medium_grey()),
                  Spacer(),
                  Text('500', style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Tax and service charges', style:medium_grey()),
                  Spacer(),
                  Text('300', style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Divider(
                color: Colors.grey,
              ),
              flex: 2,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Package total', style:medium_grey()),
                  Spacer(),
                  Text('2000', style:medium_orange()),
                ],
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 7,),
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: decoration(),
                        height: 50,
                        child:
                        TextButton(onPressed: (){}, child: Text('Skip' , style: button_blue()))
                      ),
                      flex: 10,
                    ),
                    Expanded(child: Container(), flex: 1,),
                    Expanded(
                      child: Container(
                        decoration: filledboxdecoration(),
                        height: 50,
                        child: TextButton(onPressed: (){
                          Navigator.of(context).pushNamed('/OnBoard2');
                        }, child: Text('Next', style: button_white())),
                      ),
                      flex: 10,
                    ),
                  ],
                ),
                flex: 6,
            ),
            Expanded(child: Container(), flex: 10,),
          ],
        ),
      ),
    );
  }
}