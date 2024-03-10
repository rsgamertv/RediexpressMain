import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllPackages extends StatefulWidget{
  @override
  State<AllPackages> createState() => _AllPackagesState();
}

class _AllPackagesState extends State<AllPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your packages', textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(20),
            child: TextButton(
                onPressed: (){},
                child: Icon(Icons.add),
                style: TextButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white
                ),
            ),
          )
        ],
      ),
    );
  }
}