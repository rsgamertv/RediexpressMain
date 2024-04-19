import 'package:RediExpress/Models/package_model.dart';
import 'package:RediExpress/Packages/current_package.dart';
import 'package:RediExpress/Packages/ready_package_info.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
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
                  Text('Origin details', style: Theme.of(context).textTheme.displayMedium,)
                ],
              ),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Country'),
                controller: originCountryController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('State'),
                controller: originStateController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Address'),
                controller: originAddressController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Phone number'),
                controller: originPhoneNumberController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(child:
              TextField(
                decoration: field_outlined_decoration_small_font('Others'),
                controller: originOthersController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage('assets/location_icon.png'),
                    color: Theme.of(context).primaryColor,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                  Text('Destination details', style: Theme.of(context).textTheme.displayMedium,)
                ],
              ),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Country'),
                controller: destinationCountryController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('State'),
                controller: destinationStateController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Address'),
                controller: destinationAddressController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Phone number'),
                controller: destinationPhoneNumberController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(child:
            TextField(
              decoration: field_outlined_decoration_small_font('Others'),
              controller:  destinationOthersController,
            ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 2,),
            Expanded(
              flex: 5,
              child: Text('Package details', style: Theme.of(context).textTheme.displayMedium,),
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Package items'),
                controller: packageItemsController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Weight of items(kg)'),
                controller: weightOfItemsController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 1,),
            Expanded(
              child: TextField(
                decoration: field_outlined_decoration_small_font('Worth of items'),
                controller: worthOfItemsController,
              ),
              flex: 5,
            ),
            Expanded(child: Container(), flex: 2,),
            Expanded(
              flex: 5,
              child: Text('Select delivery type', style: Theme.of(context).textTheme.displayMedium,)
            ),
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
                      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                        ),
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
                          backgroundColor: Theme.of(context).dividerColor,
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
            Expanded(child: Container(), flex: 3,),
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
