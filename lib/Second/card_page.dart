import 'package:RediExpress/core/Styles/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  late int selectedMethod;
  @override
  void initState() {
    super.initState();
    selectedMethod = 0;
  }
  setSelectedMethod(int value){
    setState(() {
      selectedMethod = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add payment method', style: Theme.of(context).textTheme.titleMedium,),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(),flex: 10,),
              Expanded(
                flex: 13,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 6,
                        color: Theme.of(context).hintColor
                      )
                    ]
                  ),
                  child: RadioListTile(title: Text('Pay with wallet', style: Theme.of(context).textTheme.displayMedium,) ,subtitle: Text('complete the payment using your e wallet', style: Theme.of(context).textTheme.titleSmall,),value: 1, groupValue: selectedMethod, onChanged: (val){
                    setSelectedMethod(val!);
                  
                  }),
                ),
              ),
              Expanded(child: Container(),flex: 5,),
              Expanded(
                flex: 13,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 6,
                        color: Theme.of(context).hintColor
                      )
                    ]
                  ),
                  child: RadioListTile(
                    subtitle: Text('complete the payment using your debit card',style: Theme.of(context).textTheme.titleSmall,),
                    title: Text('Credit / debit card', style: Theme.of(context).textTheme.displayMedium,),
                    value: 2, groupValue: selectedMethod, onChanged: (val){
                      setSelectedMethod(val!);
                  
                  }),
                ),
              ),
              Expanded(child: Container(),flex: 35,),
              Expanded(child: Container(
                decoration: filledboxdecoration(),
                child: TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/MainPage');
                }, child: Text('Proceed to pay', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ))),
              ),flex: 7,),
              Expanded(child: Container(),flex: 13,)
          ],
        ),
      ),
    );
  }
}