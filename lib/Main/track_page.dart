import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        title: Text('Track',style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
        elevation: darkTheme.appBarTheme.elevation,
        surfaceTintColor: Theme.of(context).cardColor,
      ),
      body: SafeArea(
          child: packages.isNotEmpty && packages.firstOrNull != '' ? Container(
            child: 
                  new Column(
                    children: [
                        Flexible(
                          child: CustomScrollView(
                          primary: false,
                            slivers:<Widget> [
                                SliverPadding(padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),sliver: SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 16/9,
                                crossAxisSpacing: 25,
                                mainAxisSpacing: 15,
                                mainAxisExtent: 25.w
                                ),
                                itemCount: packages.length ,
                                 itemBuilder: (BuildContext context, int index){
                                  return Card(
                                    color: Theme.of(context).cardColor,
                                    child: Center(child: Text(findpPackage(2).name)),
                                  );
                              }),)
                              ],
                            
                            ),
                        ),
                            Container(
                              padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 2.h,bottom: 2.h),
                              width: 100.h,
                              child: FloatingActionButton(onPressed: (){
                                Navigator.of(context).pushNamed('/PackageInfoBase');
                                
                              }, child: Text('Add package')),
                            ),
                    ],
                  ),
          ) : Container(
            child: Column(
              children: [
                Flexible(child: Center(child: Text('No packages'))),
                 Container(
                              padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 2.h,bottom: 2.h),
                              width: 100.h,
                              child: FloatingActionButton(onPressed: (){
                                Navigator.of(context).pushNamed('/PackageInfoBase');
                                
                              }, child: Text('Add package')),
                            ),
              ],
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