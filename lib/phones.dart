import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  const Phone({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    //final size=MediaQuery.of(context).size;
    return Container(
      
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left:35.0),
            child: Image.asset(image),
          ),
          const SizedBox(height: 10),
          Text(
            price,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){

          }, 
          
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber
          ),
           child: const Text('purchase',style: TextStyle(
            fontSize: 15
          ),
          ),
          )
        ],
      ),
    );
  }
}
