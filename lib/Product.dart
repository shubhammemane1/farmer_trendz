import 'package:FarmerTrendz/Desktopweb/Desktop_product.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_Product_view.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_view%20Product.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        if(constraints.maxWidth > 800){
          return Desk_prod();
        }else{
          return Mobile_prod();
        }
      },
      
    );
  }
}