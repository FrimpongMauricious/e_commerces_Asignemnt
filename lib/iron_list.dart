//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:e_commerce/controllers.dart';
import 'package:e_commerce/all_variables.dart';

class Iron extends StatelessWidget {
  
  const Iron({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text('Pressing Iron Hub',style:TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.black12,
          
        ),
        body: Column(
          children: [
            Expanded(
              child:size.width<650? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controllers.length,
                itemBuilder: (context, index) {
                  final iron = irons[index];
                  return Contollers(
                    name: iron['name'] as String,
                    image: iron['image'] as String,
                    price: iron['price'] as String,
                  );
                },
              ):GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 1.1),
                 
                itemCount: controllers.length,
                itemBuilder: (context,index){
                  final iron=irons[index];
                  
                   return Contollers(
                    name: iron['name'] as String,
                    image: iron['image'] as String,
                    price: iron['price'] as String,
                  );

              })
            ),
          ],
        ),
      ),
    );
  }
}
