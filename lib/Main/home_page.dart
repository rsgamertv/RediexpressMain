import 'package:RediExpress/core/Styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Expanded(child: Container(),flex: 8,),
            Expanded(
              child: Container(
                color: Theme.of(context).errorColor,
                child: TextFormField(
                  decoration: searchFieldDecoration('Search services'),
                ),
              ),flex: 7,),
              Expanded(child: TextButton(
                onPressed: (){},
                child: Text('Чат', style: Theme.of(context).textTheme.titleMedium,),
              ),flex: 10,),
            Expanded(child: Container(),flex: 70,)
          ],
        ),
      ),
    );
  }
}