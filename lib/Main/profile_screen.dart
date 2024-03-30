import 'dart:ffi';

import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:RediExpress/ThemesFolder/cubit/theme_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late int balance;
  UserModel userModel = UserModel(dio: Dio());
  AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();
  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<ThemeCubit>().state.brightness;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
        elevation: darkTheme.appBarTheme.elevation,
        surfaceTintColor: Theme.of(context).cardColor,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Expanded(flex: 2,child: Container(),),
            Expanded(flex: 15,child: Row(
                children: [
                  const Expanded(flex: 18,child: CircleAvatar(
                    backgroundImage: AssetImage('assets/manimage.png'), 
                    radius: 100,
                  ),),
                  Expanded(child: Container(),flex: 5,),
                  Expanded(flex: 70,child: Column(
                    children: [
                      Expanded(flex: 25,child: Container(),),
                      Expanded(flex: 25,child:Row(
                        children: [
                          Expanded(flex: 15,child: Text('Hello', style: Theme.of(context).textTheme.displayMedium,),),
                          Expanded(flex: 55,child: Text(abstractUserModel.name.toString(), style: Theme.of(context).textTheme.displayMedium,),)
                        ],
                      ),),
                      Expanded(flex: 5,child: Container(),),
                      Expanded(flex: 20,child: Row(
                        children: [
                          Expanded(flex: 30,child: Text('Current balance: ', style: Theme.of(context).textTheme.displaySmall,),),
                          Expanded(flex: 38,child: Text(abstractUserModel.phoneNumber.toString(),style: Theme.of(context).textTheme.headlineSmall,),)
                        ],
                      ),),          
                      Expanded(flex: 35,child: Container(),)
                    ],
                  ),),
                  Expanded(flex: 10, child: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_off_outlined), padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),iconSize: 25,color: Theme.of(context).iconTheme.color,))

                ],
            ),),
            Expanded(flex: 1,child: Container(),),
            Expanded(flex: 4,child: Row(
              children: [
                Expanded(flex: 54,child: Text('Enabled dark Mode', style: Theme.of(context).textTheme.displayLarge,),),
                Expanded(flex: 10, child: CupertinoSwitch(value: brightness == Brightness.dark , onChanged: (value) {
                  context.read<ThemeCubit>().SetThemeBrightness(value ? Brightness.dark : Brightness.light);

                }) ),
              ],
            ),),
            Expanded(flex: 3,child: Container(),),
            Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){},
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/profileicon.svg',height: 30, width: 30, color: Theme.of(context).secondaryHeaderColor),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Edit Profile' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('Name, phone no, address, email ...', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){},
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/statementsicon.svg',height: 30, width: 30,color: Theme.of(context).secondaryHeaderColor,),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Statements & Reports' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('Download transaction details, orders', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){},
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/notifyicon.svg',height: 30, width: 30,color: Theme.of(context).secondaryHeaderColor,),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Notification Settings' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('mute, unmute, set location & tracking', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){},
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/walleticon.svg',height: 30, width: 30,color: Theme.of(context).secondaryHeaderColor,),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Card & Bank account settings' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('change cards, delete card details', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){},
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/referalsicon.svg',height: 30, width: 30,color: Theme.of(context).secondaryHeaderColor,),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('Referrals' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('check no of friends and earn', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (

                    ){

                    },
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/imageicon.svg',height: 30, width: 30,color: Theme.of(context).secondaryHeaderColor,),flex: 15,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container(),flex: 2,),
                            Expanded(child: Text('About Us' , style: Theme.of(context).textTheme.displayMedium,), flex: 8,),
                            Expanded(child: Text('know more about us, terms, condition', style: Theme.of(context).textTheme.titleSmall,),flex: 10,)
                          ],
                    ),flex: 73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 1,),
                     Expanded(flex: 10,child:  Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.15)
                    )
                  ]
                ),
                child:
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed('/Authorization');
                    },
                    child: 
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset('assets/logouticon.svg',height: 30, width: 30,),flex: 20),
                    Expanded(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Text('Log Out' , style: Theme.of(context).textTheme.displayMedium,)),
                          ],
                    ),flex:73,),
                    Expanded(child: Icon(Icons.keyboard_arrow_right),flex: 10,),
                  ],
                ),
                  )
            ),),
            Expanded(child: Container(),flex: 3,),
          ],
        ),
      ),
    );
  }
}