import 'package:RediExpress/Packages/current_package.dart';
import 'package:RediExpress/Packages/package_info.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageInfoBase extends StatefulWidget{
  @override
  State<PackageInfoBase> createState() => PackageInfoBaseState();
}

class PackageInfoBaseState extends State<PackageInfoBase> {
  dynamic _currentView = PackageInfo();

  PackageInfoBaseState(){
    CurrentPackageInfoBase.packageInfoBase = this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send a package',style: Theme.of(context).textTheme.displayMedium,),
        automaticallyImplyLeading: true,
        elevation: 2,
        backgroundColor: Theme.of(context).cardColor,
        shadowColor: Colors.grey,
        centerTitle: true,
      ),
      body: PageView(
        children: [
          _currentView,
        ],
      ),
    );
  }

  void changeView(dynamic view){
    setState(() {
      this._currentView = view;
    });
  }
}