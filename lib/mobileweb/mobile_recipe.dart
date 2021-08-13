import 'package:flutter/material.dart';

class Mobile_recipe extends StatefulWidget {
  @override
  _Mobile_recipeState createState() => _Mobile_recipeState();
}

class _Mobile_recipeState extends State<Mobile_recipe> {
  double screenHeight ,screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

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
                      // crossAxisAlignment: CrossAxisAlignment.center,
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
            Container(
              margin: EdgeInsets.all(20),
              child: Image.asset('recipe1.jpg')
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(20),
              child: Image.asset('recipe2.jpg')
            )
          ],
        ),
      ),
    );
  }
}