import 'package:FarmerTrendz/Product.dart';
import 'package:FarmerTrendz/class/product.dart';
import 'package:flutter/material.dart';

import 'Desktopweb/Desktop_Product_view.dart';
import 'mobileweb/Mobile_Product_view.dart';

class Product_view extends StatefulWidget {

  product _product;

  Product_view(product product){
    _product = product;
  }
  @override
  _Product_viewState createState() => _Product_viewState(_product);
}

class _Product_viewState extends State<Product_view> {

  product _product;

  _Product_viewState(product product){
    _product = product;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        if(constraints.maxWidth > 800){
          return Desk_product_view(_product);
        }else{
          return Mobile_product_view(_product);
        }
      },
      
    );
  }
}