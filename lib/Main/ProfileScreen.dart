import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget{
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',style: title_grey(),),
        automaticallyImplyLeading: false,
        elevation: 2,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
      ),
      body: Container(
        child: Column(
          children: [
<<<<<<< HEAD
            Expanded(child: Container(),flex: 4,),
            Expanded(
              child: Container(
=======
            Expanded(flex: 20,child: Container(
>>>>>>> 6a9e43d (fixed all items)
                child: Row(
                  children: [
                    Expanded(child: Container(),flex: 5,),
                    Expanded(flex: 20,child:      CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/manimage.png'),
                    ),),
<<<<<<< HEAD
                    Expanded(child: Container(),flex: 5,),
                    Expanded(
                      child: Container(
                        child: Column(
                           children: [
                            Expanded(child: Container(),flex: 20,),
                            Expanded(child: Row(
                              children: [
                                Text('Hello', style: medium_black(),),
                                Text('Alex', style: medium_black(),)
                              ],
                            ),flex: 30,
                            ),
                            Expanded(child: Container(),flex: 5,),
                            Expanded(child: Row(),flex: 30,)
                           ],
                        ),
                    ),flex: 60,)
=======
                    Expanded(child: Container(),flex: 3,),
                    Expanded(child: Container(
                      child: Column(
                         children: [
                          Expanded(child: Container(),flex: 30,),
                          Expanded(child: Row(
                            children: [
                              Text('Hello ', style: medium_black(),),
                              Text('Alex', style: medium_black(),)
                            ],
                          ),flex: 20,
                          ),
                          Expanded(child: Row(
                                children: [
                                  Text('Current balance: ',style: small_black(), ),
                                  Text('N10,712:00',style: small_blue(),)
                                ],
                          ),flex: 30,),
                          Expanded(child: Container(),flex: 25),
                         ],
                      ),
                    ),flex: 60,),
                    Expanded(child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove_red_eye),backgroundColor: Colors.white,elevation: 0,foregroundColor: Colors.black,),flex: 10,),
                    Expanded(child: Container(),flex: 2,)            
>>>>>>> 6a9e43d (fixed all items)
                  ],
                ),

            ),),
            Expanded(child:Container(),flex: 3,),
            Expanded(child: Row(
              children: [

              ],
            ),flex: 5,),
            Expanded(child: Container(),flex: 3,),
            Expanded(child: Container(),flex: 60,)
          ],
        ),
      ),
    );
  }
}