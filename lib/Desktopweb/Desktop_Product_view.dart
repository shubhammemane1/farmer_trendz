import 'package:FarmerTrendz/class/product.dart';
import 'package:flutter/material.dart';


class  Desk_product_view extends StatefulWidget {
  
  product _product;

  Desk_product_view(product product){
    _product = product;
  }
  @override
  _Desk_product_viewState createState() => _Desk_product_viewState(_product);
}

class _Desk_product_viewState extends State<Desk_product_view> {

  double screenHeight , screenWidth;

  product _product;

  _Desk_product_viewState(product product){
    _product = product;
  }
  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    var  names = TextStyle(fontSize: screenWidth/50, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.bold, color: Colors.green[900]);

    var  names1 = TextStyle(fontSize: screenWidth/60, fontFamily: 'Kontrapunkt Bob light' , fontWeight: FontWeight.bold , color: Colors.lightGreen);

    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/70,
      color: Color(0xfff2f2f2),
    );


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa8cf45),
          leading: Container(
            padding: const EdgeInsets.all(3),
             child: ClipOval(
             child: Image.network("https://i.ibb.co/f0FffTX/favicon.png",scale: 15,),
            ),
          ),
          actions: [
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  child: Text("Home", style: appBarTextTheme),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/home');
                    });
                  }),
              FlatButton(
                  child: Text(
                    "Products",
                    style: appBarTextTheme,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/product');
                    });
                  }),
              FlatButton(
                  child: Text(
                    "History",
                    style: appBarTextTheme,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/history');
                    });
                  }),
              FlatButton(
                  child: Text(
                    "Receipe",
                    style: appBarTextTheme,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/recipe');
                    });
                  }),
              FlatButton(
                  child: Text(
                    "About us",
                    style: appBarTextTheme,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/about');
                    });
                  }),
            ],
          )
          ],
        ),

      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                  margin: EdgeInsets.only(top:10),
                  child: GestureDetector(
                      child: Hero(
                          tag: _product.name,
                          child: Image.asset(_product.img ,height: screenHeight/1.3,)
                        ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(_product.name, style: names,),
                    ),
                    Container(
                      width: screenWidth/3,
                      child: Text(_product.desc, style: names1,),
                    ),
                    SizedBox(height: screenHeight/10  ,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(_product.health,style: names,)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(_product.b1, style: names1),
                        Text(_product.b2, style: names1),
                        Text(_product.b3, style: names1),
                        Text(_product.b4, style: names1),
                        Text(_product.b5, style: names1),
                        Text(_product.b6, style: names1),
                      ],
                    )

                  ],
                )
          ],
        )
      ),
    );
  }
}