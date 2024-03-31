import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:RediExpress/core/Styles/style.dart';
import 'package:RediExpress/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueAccent 
        ),
          title: Text('Chats', style: Theme.of(context).textTheme.displayLarge,),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            Expanded(child: Container(),flex: 3,),
            Expanded(child: Container(
              color: Theme.of(context).errorColor,
            child: TextFormField(
              decoration: searchFieldDecoration('Search'),
            ),  
            ),flex: 7,),
            Expanded(child: Container(),flex: 5,),
            Expanded(child:GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return  Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.withOpacity(0.5)
                    )
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Container(),flex: 5,),
                      Expanded(child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/manimage.png'),
                      ),flex: 20,),
                      Expanded(child: Container(),flex: 3,),
                      Expanded(child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 10,),
                            Expanded(child: Text('John Joshua', style: Theme.of(context).textTheme.displayLarge,),flex: 20,),
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Thanks for your service', style: Theme.of(context).textTheme.displayMedium,),flex: 15,),
                            Expanded(child: Container(),flex: 10,)
                          ],
                        ),
                      ),flex: 60,),
                      Expanded(child: Container(),flex: 3,),
                      Expanded(child: Icon(Icons.one_k),flex: 10,),
                      Expanded(child: Container(),flex: 5,)
                    ],
                  ),
                );;
              },
            ),flex: 85,)
          ],
        ),
      ),
    );
  }
  }