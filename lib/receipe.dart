import 'package:FarmerTrendz/Desktopweb/Desk_recipe.dart';
import 'package:flutter/material.dart';

import 'mobileweb/mobile_recipe.dart';

class Receipe extends StatefulWidget {
  @override
  _ReceipeState createState() => _ReceipeState();
}

class _ReceipeState extends State<Receipe> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        if(constraints.maxWidth > 800){
          return Desk_recipe();
        }else{
          return Mobile_recipe();
        }
      },
      
    );
  }
}