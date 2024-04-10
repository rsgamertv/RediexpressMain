import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:RediExpress/core/Styles/style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Expanded(child: Container(),flex: 10,),
            Expanded(
              child: Container(
                color: Theme.of(context).errorColor,
                child: TextFormField(
                  decoration: searchFieldDecoration('Search services'),
                ),
              ),flex: 6,),
            Expanded(child: Container(),flex: 3,),
            Expanded(child: Container(
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).dividerColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container(),flex: 5,),
                  Expanded(child: CircleAvatar(
                      backgroundImage: AssetImage('assets/manimage.png',),
                      radius: 31,
                    ),
                  flex: 18,),
                  Expanded(child: Container(),flex: 3,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text('Hello' +  ' ' + abstractUserModel.name.toString() , style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),),
                      Text('We trust you are having a great time', style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                      SizedBox(height: 10,),
                    ],
                  ),flex: 60,),
                  Expanded(child: Icon(Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 30,),flex: 10,),
                  Expanded(child: Container(),flex: 4,)
                ],
              ),
            ),flex: 14,),
            Expanded(child: Container(),flex: 3,),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Special for you', style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(236, 128, 0, 1),
                  fontWeight: FontWeight.w600
                ),),
                Icon(Icons.arrow_circle_right_outlined,
                color: Color.fromRGBO(236, 128, 0, 1))
              ],
            ),flex: 5,),
            Expanded(child: Row(
              children: [
                Expanded(child: Image.asset('assets/image.png'),flex: 50,),
                Expanded(child: Container(),flex: 5,),
                Expanded(child: Image.asset('assets/image1.png'), flex: 50),
              ],
            ),flex: 12,),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('What would you like to do' , style: Theme.of(context).textTheme.headlineMedium,)),flex: 5,),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).hoverColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        offset: Offset(0,2),
                        color: Colors.grey.withOpacity(0.1)
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container(),flex:5 ,),
                      Expanded(child: SvgPicture.asset('assets/customer_care.svg'),flex: 30,),
                      Expanded(child: Text('Customer Care',  style: Theme.of(context).textTheme.headlineMedium,),flex: 20,),
                      Expanded(child: Text('Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today', style: Theme.of(context).textTheme.labelSmall,), flex: 40,),
                      Expanded(child: Container(),flex: 5,)
                    ],
                  ),
                ),flex: 45,),
                Expanded(child: Container(),flex: 5,),
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/PackageInfoMap');
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).hoverColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0,2),
                          color: Colors.grey.withOpacity(0.1)
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container(),flex:5 ,),
                        Expanded(child: SvgPicture.asset('assets/send_package.svg'),flex: 30,),
                        Expanded(child: Text('Send a package',  style: Theme.of(context).textTheme.headlineMedium,),flex: 20,),
                        Expanded(child: Text('Send a package Request for a driver to pick up or deliver your package for you', style: Theme.of(context).textTheme.labelSmall,), flex: 40,),
                        Expanded(child: Container(),flex: 5,)
                      ],
                    ),
                  ),
                ),flex: 45,),
              ],
            ),flex: 20,),
            Expanded(child: Container(),flex: 2,),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).hoverColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        offset: Offset(0,2),
                        color: Colors.grey.withOpacity(0.1)
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container(),flex:5 ,),
                      Expanded(child: SvgPicture.asset('assets/wallet_care.svg'),flex: 30,),
                      Expanded(child: Text('Fund your wallet',  style: Theme.of(context).textTheme.headlineMedium,),flex: 20,),
                      Expanded(child: Text('To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today', style: Theme.of(context).textTheme.labelSmall,), flex: 40,),
                      Expanded(child: Container(),flex: 5,)
                    ],
                  ),
                ),flex: 45,),
                Expanded(child: Container(),flex: 5,),
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/ChatsPage');
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).hoverColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0,2),
                          color: Colors.grey.withOpacity(0.1)
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container(),flex:5 ,),
                        Expanded(child: SvgPicture.asset('assets/chat_care.svg'),flex: 30,),
                        Expanded(child: Text('Chats',  style: Theme.of(context).textTheme.headlineMedium,),flex: 20,),
                        Expanded(child: Text('Search for available rider within your area', style: Theme.of(context).textTheme.labelSmall,), flex: 40,),
                        Expanded(child: Container(),flex: 5,)
                      ],
                    ),
                  ),
                ),flex: 45,),
              ],
            ),flex: 20,)
            ,Expanded(child: Container(),flex: 2,)
          ],
        ),
      ),
    );
  }
}