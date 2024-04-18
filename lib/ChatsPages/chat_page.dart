import 'dart:async';
import 'dart:convert';

import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/static_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../Models/UserModel/user_model.dart';
import '../main.dart';
import 'message_model.dart';

class ChatPage extends StatefulWidget{
  @override
  State<ChatPage> createState() => _ChatPageState(room_id, other_user);

  late int room_id;
  late UserModel other_user;

  ChatPage(int room_id, UserModel other_user){
    this.room_id = room_id;
    this.other_user = other_user;
  }
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late WebSocketChannel _channel;

  late int room_id;
  late UserModel other_user;

  _ChatPageState(int room_id, UserModel other_user){
    this.room_id = room_id;
    this.other_user = other_user;

    this._channel = WebSocketChannel.connect(
    Uri.parse('ws://$ip/chats/${room_id}/${other_user.id}'),
  );
  }

  List<MessageModel> messages = [];

  @override
  void initState() {
    _initAllMessages();

    _channel.stream.listen((event) {
      if(event.toString().length > 0){
        var data = event.toString();

        int user_id = int.parse(data.substring(0, data.indexOf(':')));
        String message =  data.substring(data.indexOf(':') + 2);

        messages.add(MessageModel(user_id: user_id, message: message));

        setState(() {
          messages;
        });

        _scrollDown();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            // const SizedBox(height: 2.0),
            Text(
              other_user.name!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 8.0,
            bottom: 8.0
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    final message = messages[index];

                    return Row(
                      mainAxisAlignment: (message.user_id != StaticModel.staticModel.id)
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        messageBubble(message)
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context)
                            .colorScheme
                            .primary
                            .withAlpha(100),
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _sendMessage();
                          },
                          icon: Icon(Icons.send),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget messageBubble(MessageModel message){
    final size = MediaQuery.sizeOf(context);

    final alignment = (message.user_id == GetIt.I<AbstractUserModel>().id)
        ? Alignment.centerLeft
        : Alignment.centerRight;

    final color = (message.user_id == GetIt.I<AbstractUserModel>().id)
        ? Colors.grey :
        Theme.of(context).colorScheme.primary;

    final textColor = Colors.white;

    return Align(
      alignment: alignment,
      child: Container(
        constraints: BoxConstraints(maxWidth: size.width * 0.66),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Text(
          message.message ?? '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
         _channel.sink.add(_controller.text);
      });
    }
  }

  Future<void> _initAllMessages() async{
    messages.clear();

    var response = await Dio().get(
      'http://$ip/chats/$room_id'
    );

    List<dynamic> data = (response.data as Map<String, dynamic>)['data'];

    data.forEach((msg) {
      if(msg['message'].toString().length > 0) {
        messages.add (
            MessageModel(user_id: msg['user_id'], message: msg['message']));
      }
    });

    setState(() {
      messages;
    });

    _scrollDown();
  }

  void _scrollDown(){
    _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  void dispose() {
    _channel.sink.close();
    _controller.dispose();
    _scrollController.dispose();

    super.dispose();
  }
}
