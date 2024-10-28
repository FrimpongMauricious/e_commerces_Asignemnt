//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:e_commerce/controllers.dart';
import 'package:e_commerce/all_variables.dart';

class Controllers extends StatelessWidget {
  
  const Controllers({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
       // backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('Console Controllers',style:TextStyle(color: Colors.black)),
          centerTitle: true,
          
        ),
        body: Column(
          children: [
            Expanded(
              child:size.width<650? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controllers.length,
                itemBuilder: (context, index) {
                  final controller = controllers[index];
                  return Contollers(
                    name: controller['name'] as String,
                    image: controller['image'] as String,
                    price: controller['price'] as String,
                  );
                },
              ):GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 1.1),
                 
                itemCount: controllers.length,
                itemBuilder: (context,index){
                  final controller=controllers[index];
                  
                   return Contollers(
                    name: controller['name'] as String,
                    image: controller['image'] as String,
                    price: controller['price'] as String,
                  );

              })
            ),
          ],
        ),
      ),
    );
  }
}
