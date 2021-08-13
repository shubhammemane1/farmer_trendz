import 'package:FarmerTrendz/Desktopweb/Desktop_aboutUs.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_view_aboutUs.dart';
import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  @override
  _About_usState createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
         if(constraints.maxWidth > 800){
          return DesktopAboutus();
        }else{
          return MobileAboutUs();
        }
      },
    );
  }
}