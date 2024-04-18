import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  @override
  Widget build(BuildContext context) {
    final packages =  List<Package>.generate(10, (index) => Package(index));
    Package findpPackage(int id) => packages.firstWhere((element) => element.id == id);
    List packagesnull = [''];
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
        elevation: darkTheme.appBarTheme.elevation,
        surfaceTintColor: Theme.of(context).cardColor,
      ),
      body: SafeArea(
        child: Container(
          child: packages.isNotEmpty && packages.firstOrNull != '' ? Container(
            child: 
                CustomScrollView(
                  primary: false,
                  slivers:<Widget> [
                    SliverPadding(padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),sliver: SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 16/9,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 25.w
                    ),
                    itemCount: packages.length + 1,
                     itemBuilder: (BuildContext context, int index){
                      return Card(
                        child: Center(child: Text(findpPackage(2).name)),
                      );
                  }),)
                  ],
                )
          ) : Container(
            child: Center(child: Text('No packages')),
          ),
        ),
      ),
    );
  }

}
  class Package{
  final int id;

  String get name => "Package$id";

  Package(this.id);
}