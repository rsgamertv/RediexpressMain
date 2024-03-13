import 'package:RediExpress/Main/CurrentMainPage.dart';
import 'package:RediExpress/Packages/AllPackages.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageInfo extends StatefulWidget {
  @override
  State<PackageInfo> createState() => _PackageInfoState();
}

class _PackageInfoState extends State<PackageInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send package'),
        centerTitle: true,
        leading: BackButton(
          onPressed: (){
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.add),
                Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                Text('Origin details', style: large_black(),)
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Country'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('State'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Address'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Phone number'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Others'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            Row(
              children: [
                Icon(Icons.add),
                Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                Text('Origin details', style: large_black(),)
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Country'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('State'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Address'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Phone number'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
            TextField(
              decoration: field_outlined_decoration('Others'),
            ),
          ],
        ),
      )
    );
  }}
