import 'package:FarmerTrendz/Desktopweb/Desktop_web_home.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_view_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        if(constraints.maxWidth > 800){
          return DesktopWeb();
        }else{
          return PhoneWeb();
        }
      },
    );
  }
}