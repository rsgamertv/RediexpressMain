import 'package:RediExpress/Models/PackageModel.dart';
import 'package:RediExpress/Packages/AllPackages.dart';
import 'package:RediExpress/Packages/CurrentPackageInfoBase.dart';
import 'package:RediExpress/Packages/ReadyPackageInfo.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:RediExpress/core/Styles/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageInfo extends StatefulWidget {
  @override
  State<PackageInfo> createState() => _PackageInfoState();
}

class _PackageInfoState extends State<PackageInfo> {
  final originCountryController = new TextEditingController(), originStateController = new TextEditingController(), originAddressController = new TextEditingController(), originPhoneNumberController = new TextEditingController(), originOthersController = new TextEditingController(),
        destinationCountryController = new TextEditingController(), destinationStateController = new TextEditingController(), destinationAddressController = new TextEditingController(), destinationPhoneNumberController = new TextEditingController(), destinationOthersController = new TextEditingController(),
        packageItemsController = new TextEditingController(), weightOfItemsController = new TextEditingController(), worthOfItemsController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Icon(
                      Icons.home,
                      color: Theme.of(context).primaryColor,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                  Text('Origin details', style: large_black(),)
                ],
              ),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Country'),
                controller: originCountryController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('State'),
                controller: originStateController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Address'),
                controller: originAddressController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Phone number'),
                controller: originPhoneNumberController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(child:
              TextField(
                decoration: field_outlined_decoration('Others'),
                controller: originOthersController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage('assets/location_icon.png'),
                    color: Theme.of(context).primaryColor,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                  Text('Destination details', style: large_black(),)
                ],
              ),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Country'),
                controller: destinationCountryController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('State'),
                controller: destinationStateController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Address'),
                controller: destinationAddressController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Phone number'),
                controller: destinationPhoneNumberController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(child:
            TextField(
              decoration: field_outlined_decoration('Others'),
              controller:  destinationOthersController,
            ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              flex: 7,
              child: Text('Package details', style: large_black(),),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Package items'),
                controller: packageItemsController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Weight of items(kg)'),
                controller: weightOfItemsController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration('Worth of items'),
                controller: worthOfItemsController,
              ),
              flex: 4,
            ),
            Expanded(child: Container(), flex: 2,),
            Expanded(
              flex: 7,
              child: Text('Select delivery type', style: large_black(),)
            ),
            Expanded(child: Container(), flex: 2,),
            Expanded(
              flex: 12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: decoration(),
                      child: ElevatedButton.icon(
                          onPressed: (){
                            CurrentPackageInfoBase.packageInfoBase!.changeView(ReadyPackageInfo(PackageModel(originCountry: 'country', originState: 'state', originAddress: 'address', originPhoneNumber: '1234', originOthers: '-',
                                                                                                              destinationCountry: 'country', destinationState: 'state', destinationAddress: 'address', destinationPhoneNumber: '123424', destinationOthers: '-',
                                                                                                              packageItems: 'books', weightOfItems: 1000, worthOfItems: 1000)));
                          },
                          icon: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.white,
                          ),
                          label: Text(
                            'Instant delivery',
                            style: button_white(),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            shape: LinearBorder(
                            ),
                          ),
                      ),
                    ),
                    flex: 10,
                  ),
                  Expanded(child: Container(), flex: 1,),
                  Expanded(
                    child: Container(
                      decoration: white_decoration(),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Scheduled delivery',
                          style: button_grey(),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: LinearBorder(
                          ),
                        ),
                      ),
                    ),
                    flex: 10,
                  ),
                ],
              ),
            ),
            Expanded(child: Container(), flex: 2,),
          ],
        ),
      )
    );
  }

  void savePackage(){
    if(originCountryController.text.isEmpty || originStateController.text.isEmpty || originAddressController.text.isEmpty || originPhoneNumberController.text.isEmpty ||
       destinationCountryController.text.isEmpty || destinationStateController.text.isEmpty || destinationAddressController.text.isEmpty || destinationPhoneNumberController.text.isEmpty ||
       packageItemsController.text.isEmpty || weightOfItemsController.text.isEmpty || worthOfItemsController.text.isEmpty){
      return;
    }
    
    PackageModel packageModel = PackageModel(originCountry: originCountryController.text, originState: originStateController.text, originAddress: originAddressController.text, originPhoneNumber: originPhoneNumberController.text, originOthers: originPhoneNumberController.text,
                                             destinationCountry: destinationCountryController.text, destinationState: destinationStateController.text, destinationAddress: destinationAddressController.text, destinationPhoneNumber: destinationPhoneNumberController.text, destinationOthers: destinationOthersController.text,
                                             packageItems: packageItemsController.text, weightOfItems: int.parse(weightOfItemsController.text), worthOfItems: int.parse(worthOfItemsController.text));


  }
}
