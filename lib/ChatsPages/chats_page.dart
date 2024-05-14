import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/static_model.dart';
import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:RediExpress/core/Styles/style.dart';
import 'package:RediExpress/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'chat_page.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    initAllUsers();

    super.initState();
  }

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
              color: Theme.of(context).hintColor,
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
              itemBuilder: usersListBuilder
            ),flex: 85,)
          ],
        ),
      ),
    );
  }

  Widget usersListBuilder (BuildContext context, int index){
    if(index >= users.length){
      return Container();
    }
    UserModel user = users[index];

    return GestureDetector(
      onTap: (){ 
        goToChat(user); 
        },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
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
                  Expanded(child: Text(user.name!, style: Theme.of(context).textTheme.displayLarge,),flex: 20,),
                  Expanded(child: Container(),flex: 2,),
                  Expanded(child: Text(user.email!, style: Theme.of(context).textTheme.displayMedium,),flex: 15,),
                  Expanded(child: Container(),flex: 10,)
                ],
              ),
            ),flex: 60,),
            Expanded(child: Container(),flex: 3,),
            Expanded(child: Icon(Icons.one_k),flex: 10,),
            Expanded(child: Container(),flex: 5,)
          ],
        ),
      )
    );
  }

  void initAllUsers() async{
    final response = await Dio().get(
      'http://$ip/users/all'
    );

    final data = response.data as Map<String, dynamic>;

    final userList = data['data'] as List<dynamic>;

    userList.forEach((user) {
      UserModel userToAdd = UserModel(dio: Dio());

      userToAdd.id = user['id'];
      userToAdd.email = user['email'];
      userToAdd.name = user['name'];

      if(userToAdd.id != GetIt.I<AbstractUserModel>().id) {
        users.add(userToAdd);
      }
    });

    setState(() {
      users;
    });
  }


  void goToChat(UserModel otherUser) async{
    var json = {
      'data': [
        GetIt.I<AbstractUserModel>().id,
        otherUser.id
      ]
    };

  final response = await Dio().post(
      'http://${ip}/chats/', data: json,
    );

    final data = response.data as Map<String, dynamic>;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage(data['data']['room_id'], otherUser)),
    );
  }
}
