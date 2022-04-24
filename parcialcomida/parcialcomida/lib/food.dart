

import 'package:flutter/material.dart';
import 'package:parcialcomida/fooditem.dart';

class foodApp extends StatefulWidget {
  @override
  State<foodApp> createState() => _foodAppState();
}

class _foodAppState extends State<foodApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'INICIO'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'FAVORITO'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book),label: 'MENU'),
          
        ],

      ),

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(width: 50,height: 50, decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mujer.png')
                    )
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
              child: Column(
                children: [
                  Text('Buscador de comida',style: TextStyle(
                    fontWeight: FontWeight.w700,fontSize: 30,
                  ),),
                  SizedBox(height: 10,),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[500],
                      hintText: 'Buscar...',
                      hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text('Recomendaciones',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),


                ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 450,
                  child:GridView.count(
                  crossAxisCount:2,
                   children: [
                     foodCard(context,'Pastel', 'assets/pastel.png', 2, Colors.red),
                     foodCard(context,'Carne', 'assets/carne.png', 5, Colors.blue),
                     foodCard(context,'POLLO', 'assets/pollo.png', 3, Colors.green),
                     foodCard(context,'PESCADO', 'assets/pescado.png', 7, Colors.yellow),
                     foodCard(context,'Cafe', 'assets/cafe.png', 1, Colors.cyan),
                     foodCard(context,'Soda', 'assets/soda.png', 2, Colors.orange),
                     foodCard(context,'Pupusas', 'assets/pupusas.png', 4, Colors.amber),
                     foodCard(context,'Yuca', 'assets/yuca.png', 1, Colors.lightGreen),
                     foodCard(context,'Empanadas', 'assets/empanada.png', 2, Colors.lightBlueAccent),
                     foodCard(context,'Tamales', 'assets/tamales.png', 1, Colors.deepPurple),

                ],
                ),
                ),
              ),
              
              
              
              
              
            
          ],
        ),
    );

  }
}

foodCard(BuildContext context, String name,String img,var Price,Color cardColor)
{


  return InkWell(
    onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => foodItem(name: name, img: img,price: Price)));
    },

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      child: Container(
          width: 80,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),color: cardColor,),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                  )
                ),
              ),
  
              Text(name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white),),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('\$$Price',style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white
                  ), ),
                  Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                ],
              )
  
            ],),
            ) 
      ),
    ),
  );

}