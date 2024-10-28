//import 'package:e_commerce/pay_pal.dart';
import 'package:e_commerce/pay_stack.dart';
import 'package:flutter/material.dart';

class Flash extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const Flash({
    
    super.key,
    required this.name,
    required this.image,
    required this.price}
    );

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 320,
         margin: const EdgeInsets.all(20),
      decoration:const  BoxDecoration(
        color: Color.fromRGBO(235, 240, 255, 1)
      
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
           children: [
          Text(
            name, style:  const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),),
          Image(image: AssetImage(image)),
          Text(price, style:  const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(
            height: 9,
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const PayStack();
            }));
          },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black
        ),
         child: const Text('Buy',
          
          style: TextStyle(
            color:Colors.black
          ),
          ),
          )
        ],
        
        )),
    );
     
    
  }
}