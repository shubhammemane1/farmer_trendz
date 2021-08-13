import 'package:FarmerTrendz/Product.dart';
import 'package:FarmerTrendz/about_us.dart';
import 'package:FarmerTrendz/history.dart';
import 'package:FarmerTrendz/receipe.dart';
import 'package:flutter/material.dart';
import 'package:FarmerTrendz/index.dart';




/////
///Create Recepie page with just Image:
///
///
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faremer Trendz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  brightness: Brightness.dark,
        primarySwatch: Colors.green,
        
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Kontrapunkt Bob' ,
                color: Colors.black87
            )
        )
      ),
      home: Home(),
      routes: <String , WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/product': (BuildContext context) => Product(),
        '/recipe': (BuildContext context) => Receipe(),
        '/history': (BuildContext context) => History(),
        '/about': (BuildContext context) => About_us(),
        
      }
    );
  }
}