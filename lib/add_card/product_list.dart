import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {

  List<String> productName = ['Mango' , 'Banana' , 'Orange' , 'Sandwich' , 'Pizza' , 'KFC','Chicken',] ;
  List<String> productUnit = ['KG' , 'Dozen' , 'KG' , 'Piece' , 'Piece' , 'KG', 'KG',] ;
  List<int> productPrice = [10, 20 , 30 , 40 , 50, 60 , 70 ] ;
  List<String> productImage = [
    "assets/images/mango-isolated.webp",
    "assets/images/banana.jpg",
    "assets/images/orange-fruit.webp",
    "assets/images/sandwich.jpg",
    "assets/images/pizza.jpg",
    "assets/images/kfc.webp",
    "assets/images/chicken.webp",
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          Center(
            child: Badge(
              badgeContent: const Text('0'),
              animationDuration: const Duration(milliseconds: 300),
              child: const Icon(Icons.shopping_bag,),
            ),
          ),
          const SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15,),
                          Image(
                            width: 100,
                            height: 100,
                            image: AssetImage(productImage[index].toString())
                          ),
                          const SizedBox(width: 25,),
                          Column(
                            children: [
                              Text(productName[index].toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              Text("${productUnit[index]} \$${productPrice[index]}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: (){}, 
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text("Add to card"),
                            ),
                          ),
                          const SizedBox(width: 25,)
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          )
        ],
      ),
    );
  }
}