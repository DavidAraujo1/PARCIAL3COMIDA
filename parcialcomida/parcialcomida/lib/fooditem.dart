import 'package:flutter/material.dart';
class foodItem extends StatelessWidget {
  

final name;
final img;
final price;

  const foodItem({Key? key, this.name, this.img, this.price}) : super(key: key);


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
          body:ListView(
            children: [
              Container(width: 200, height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage(img) )
              ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.w700
                      ),),
                      Text('CON ESTA NUEVA APP DE COMIDA PODRAS BUSCAR Y ORDENAR LA COMIDA QUE ATI MAS TE GUSTE! NO PIERDAS EL TIEMPO Y ORDENA YA! O A POCO NO SETE ANTOJA ESA DELICIA QUE SE APRESA EN LA IMAGEN DE ARRIBA?',style: TextStyle(
                        fontSize: 20 ,fontWeight: FontWeight.w600,
                      ),),

                        Row(
                          children: [
                            Text('Precio total: \$$price',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),          
                        
                          ],
                        ),      
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container( alignment: AlignmentDirectional.center, width: double.infinity,height: 50,decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text('Ordenar Ya!',style: TextStyle(
                            color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700
                          ),),
                          ),
                        )

                    ],
              ),
              
            ],
          ) ,
    );
  }
}