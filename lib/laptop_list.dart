//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:e_commerce/controllers.dart';
import 'package:e_commerce/all_variables.dart';

class Laptops extends StatelessWidget {
  
  const Laptops({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: const Text('Laptops Hub',style:TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.black12,
          
        ),
        body: Column(
          children: [
            Expanded(
              child:size.width<650? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: laptops.length,
                itemBuilder: (context, index) {
                  final laptop = laptops[index];
                  return Contollers(
                    name: laptop['name'] as String,
                    image: laptop['image'] as String,
                    price: laptop['price'] as String,
                  );
                },
              ):GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 1.0),
                 
                itemCount: laptops.length,
                itemBuilder: (context,index){
                  final laptop=laptops[index];
                  
                   return Contollers(
                    name: laptop['name'] as String,
                    image: laptop['image'] as String,
                    price: laptop['price'] as String,
                  );

              })
            ),
          ],
        ),
      ),
    );
  }
}
