import 'package:e_commerce/all_variables.dart';
import 'package:e_commerce/flash_list.dart';
//import 'package:e_commerce/laptops.dart';
import 'package:e_commerce/phones_list.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/controller_list.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce/laptop_list.dart';
import 'package:e_commerce/television_list.dart';
import 'package:e_commerce/iron_list.dart';

void main() {
  runApp(const ProductScreen());
}

class ProductScreen extends StatelessWidget {
  
  const ProductScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
   // final size=MediaQuery.of(context).size;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 105),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 105),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Delivery address'),
                          Text(
                            '92 High Street, London',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Controllers(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.notifications_none),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'search the entire shop',
                hintStyle: TextStyle(color: Colors.black26),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black26,
                ),
                filled: true,
                fillColor: Colors.black12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const  Phones();
                            }));
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.black12,
                            backgroundImage: AssetImage('assets/images/phones.jpg'),
                            radius: 35,
                          ),
                        ),
                        const Text('Phones'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        Builder(
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Controllers(),
                                  ),
                                );
                              },
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/images/controler.jpg'),
                                radius: 35,
                              ),
                            );
                          },
                        ),
                        const Text('Consoles'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const Laptops();
                            }));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/laptops.jpg'),
                            radius: 35,
                          ),
                        ),
                        const Text('Laptops'),
                      ],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/desktop.jpeg'),
                            radius: 35,
                          ),
                        ),
                        const Text('Desktops'),
                      ],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return Tele();
                            }));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/television.jpg'),
                            radius: 35,
                          ),
                        ),
                        const Text('Televisions'),
                      ],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return Iron();
                            }));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/iron.jpeg'),
                            radius: 35,
                          ),
                        ),
                        const Text('Pressing Irons'),
                      ],
                    ),
                    
                  ),
                  // Additional categories...
                ],
              ),
            ),
          ),
         const Padding(
           padding: EdgeInsets.only(right: 12.0),
           child: Row(children: [
            Padding(
              padding: EdgeInsets.only(right:12.0, left: 10),
              child: Text('flash sales',
              style:TextStyle(
                color:Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Text('1 hr left',
            style:TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 17
            ))
           ],),
         ),
          Expanded(
            
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: flashSale.length,
              itemBuilder: (context,index){
                
              final flash=flashSale[index];
            
              return Flash(
                name: flash['name'] as String,
               image: flash['image'] as String,
                price: flash['price']as String);
            }),
          )
        ],
      ),
    );
  }
}
