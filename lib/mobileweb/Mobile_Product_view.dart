import 'package:FarmerTrendz/class/product.dart';
import 'package:flutter/material.dart';

class Mobile_product_view extends StatefulWidget {

  product _product;

  Mobile_product_view(product product){
    _product =product;
  }
  
  @override
  _Mobile_product_viewState createState() => _Mobile_product_viewState(_product);
}

class _Mobile_product_viewState extends State<Mobile_product_view> {
  double screenHeight ,screenWidth;

  product _product;

  _Mobile_product_viewState(product product){
    _product =product;
  }

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    var  names = TextStyle(fontSize: screenWidth/30, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.bold);
    var  names1 = TextStyle(fontSize: screenWidth/50, fontFamily: 'Kontrapunkt Bob' ,color: Colors.lightGreen , fontWeight: FontWeight.w300);

    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/30,
      fontWeight: FontWeight.bold,
      color: Color(0xfff2f2f2),
    );
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                    color: Color(0xffa8cf45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                Container(
              padding: const EdgeInsets.all(3),
               child: ClipOval(
               child: Image.network("https://i.ibb.co/f0FffTX/favicon.png",scale: 15,),
              ),
            ),
              Container(
              color: Color(0xffa8cf45),
              width: screenWidth,
                child: FittedBox(
                fit: BoxFit.fitWidth,
                  child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      FlatButton(child: Text("Home",style: appBarTextTheme),onPressed: (){
                        setState(() {
                          Navigator.of(context).pushNamed('/home');
                        });
                      }),
                      FlatButton(child: Text("Products", style: appBarTextTheme,),onPressed: (){
                      setState(() {
                        Navigator.of(context).pushNamed('/product');
                      });
                    }),
                    FlatButton(child: Text("History", style: appBarTextTheme,),onPressed: (){
                      setState(() {
                        Navigator.of(context).pushNamed('/history');
                      });
                    }),
                    FlatButton(child: Text("Recipe", style: appBarTextTheme,),onPressed: (){
                      setState(() {
                        Navigator.of(context).pushNamed('/recipe');
                      });
                    }),
                    
                    FlatButton(child: Text("About us", style: appBarTextTheme,),onPressed: (){
                      setState(() {
                        Navigator.of(context).pushNamed('/about');
                      });
                    }),
                  ],
            ),
                ),
              )
              ],
            ),
            ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffa8cf45)
                      )
                    ),
                    child: GestureDetector(
                        child: Hero(
                            tag: _product.name,
                            child: Image.asset(_product.img ,  scale: screenHeight/250 ,)
                          ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                 child: Text(_product.name, 
                    style: TextStyle(
                      fontSize: screenHeight/30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kontrapunkt Bob',
                      color: Colors.green[900]
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: screenWidth/5, right: screenWidth/5),
                  child: Align(
                    alignment: Alignment.center,
                    
                    child: Text(_product.desc, style: names1,),
                  ),
                ),
                Align(
                      alignment: Alignment.topCenter,
                      child: Text(_product.health,style: TextStyle(
                      fontSize: screenHeight/30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kontrapunkt Bob',
                      color: Colors.green[900]
                    ),)),
                Container(
                  padding: EdgeInsets.only(left: screenWidth/5, right: screenWidth/5),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(_product.b1, style: names1,),
                          Text(_product.b2, style: names1),
                          Text(_product.b3, style: names1),
                          Text(_product.b4, style: names1),
                          Text(_product.b5, style: names1),
                          Text(_product.b6, style: names1),
                        ],
                      ),
                )
              ],)
            ],
        ),
      ),
    );
  }
}