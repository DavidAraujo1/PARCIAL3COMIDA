import 'package:flutter/material.dart';

import 'food.dart';

void main()
{
   runApp(myApp()); 
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:foodApp() ,
    );
  }
}