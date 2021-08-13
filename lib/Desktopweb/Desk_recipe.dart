import 'package:flutter/material.dart';

class Desk_recipe extends StatefulWidget {

  @override
  _Desk_recipeState createState() => _Desk_recipeState();
}

class _Desk_recipeState extends State<Desk_recipe> {
  double screenHeight,screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

//    var buttonTheme = Theme.of(context).appBarTheme.textTheme.button;

    var appBarTextTheme = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      color: Color(0xfff2f2f2),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa8cf45),
        leading: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(50)
          // ),
          padding: const EdgeInsets.all(3),
          child: ClipOval(
            child: Image.network(
                "https://i.ibb.co/f0FffTX/favicon.png",
                scale: 15,
            ),
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
        child: Column(
          children: [
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