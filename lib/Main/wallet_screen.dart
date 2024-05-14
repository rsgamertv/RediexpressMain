import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/ThemesFolder/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
@RoutePage()
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
    AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: darkTheme.appBarTheme.elevation,
        surfaceTintColor: Theme.of(context).cardColor,
        automaticallyImplyLeading: false,
        title: Text('Wallet', style: TextStyle(
        ),),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  Expanded(flex: 15,child: Row(
                  children: [
                    const Expanded(flex: 18,child: CircleAvatar(
                      backgroundImage: AssetImage('assets/manimage.png'), 
                      radius: 40,
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
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8,),
                    Text('Top Up', style: Theme.of(context).textTheme.displayLarge,),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(120),
                              ),
                              child: SvgPicture.asset('assets/bankImage.svg'),
                            ),
                            SizedBox(height: 8,),
                            Text('Bank', style: Theme.of(context).textTheme.labelMedium,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(120),
                              ),
                              child: SvgPicture.asset('assets/transferImage.svg'),
                            ),
                            SizedBox(height: 8,),
                            Text('Transfer', style: Theme.of(context).textTheme.labelMedium,)
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/CardsPage');
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(120),
                                ),
                                child: SvgPicture.asset('assets/cardImage.svg'),
                              ),
                              SizedBox(height: 8,),
                              Text('Card', style: Theme.of(context).textTheme.labelMedium,)
                            ],
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),flex: 16,),
              Expanded(child: Container(),flex: 2,),
              Expanded(child: Text('Transaction History', style: Theme.of(context).textTheme.displayLarge,),flex: 5,),
              Expanded(child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 4.5,
                  mainAxisSpacing: 20,
        
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(top: 10),
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
                  child: Row(
                    children: [
                      Expanded(child: Container(),flex: 3,),
                      Expanded(flex: 40,child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text('-N3,000.00', style: Theme.of(context).textTheme.displayLarge,),
                          SizedBox(height: 8,),
                          Text('Delivery fee', style: Theme.of(context).textTheme.displayMedium,),
                        ],
                      )),
                      Expanded(child: Container(),flex: 31,),
                      Expanded(child: Text('July 7, 2022' , style: Theme.of(context).textTheme.displayMedium,),flex: 40,),
                    ],
                  ),
                  );
                },
              ),flex: 30,)
            ],
          ),
        ),
      ),
    );
  }
}