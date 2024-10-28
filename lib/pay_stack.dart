import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
void main(){
  runApp(const PayStack());
}

class PayStack extends StatefulWidget {
  const PayStack({super.key});

  @override
  State<PayStack> createState() => _PayStackState();
}

class _PayStackState extends State<PayStack> {
  final email=TextEditingController();
  final amount=TextEditingController();
  String publicKey='PZ78-PKTEST-5254038B-B81A-447A-A19F-19886C37C63D';
  final plugin=PaystackPlugin();

  @override
  void initState()  {
    // TODO: implement initState
    plugin.initialize(publicKey:publicKey);
    super.initState();
  }
  void pay() async{
int price=int.parse(amount.text)*100;
Charge charge=Charge()
..amount=price; 
CheckoutResponse response= await plugin.checkout(
  context,
  method: CheckoutMethod.card, 
  charge: charge
  );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration:const  InputDecoration(
                hintText: 'enter email',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                    
                ),
            
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: email,
              decoration:const  InputDecoration(
                hintText: 'enter amount',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                    
                ),
            
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
                    pay();
          },
           child: const Text('make payment'))
        ],
      )

    );
  }
}