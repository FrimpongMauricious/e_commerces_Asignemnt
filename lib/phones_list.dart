//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:e_commerce/controllers.dart';
import 'package:e_commerce/all_variables.dart';

class Phones extends StatelessWidget {
  
  const Phones({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('Phones Hub',style:TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.black12,
          
        ),
        body: Column(
          children: [
            Expanded(
              child:size.width<650? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: phones.length,
                itemBuilder: (context, index) {
                  final phone = phones[index];
                  return Contollers(
                    name: phone['name'] as String,
                    image: phone['image'] as String,
                    price: phone['price'] as String,
                  );
                },
              ):GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 1.0),
                 
                itemCount: phones.length,
                itemBuilder: (context,index){
                  final phone=phones[index];
                  
                   return Contollers(
                    name: phone['name'] as String,
                    image: phone['image'] as String,
                    price: phone['price'] as String,
                  );

              })
            ),
          ],
        ),
      ),
    );
  }
}
