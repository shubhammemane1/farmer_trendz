import 'dart:html';

import 'package:flutter/material.dart';

class DesktopAboutus extends StatefulWidget {
  
  @override
  _DesktopAboutusState createState() => _DesktopAboutusState();
}

class _DesktopAboutusState extends State<DesktopAboutus> {
    double screenHeight , screenWidth;

  @override
  Widget build(BuildContext context) {

      
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;


    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/70,
      color: Color(0xfff2f2f2),
    );
    var text1 = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontWeight: FontWeight.w900,
      color: Colors.green[900]
    );
    var richtext = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 55,
      color: Color(0xffa8cf45),
    );
    var text = TextStyle(
      fontFamily: 'Kontrapunkt Bob light',
      fontSize: screenWidth / 70,
      fontWeight: FontWeight.w300,
      color: Colors.green[900],
    );
    var bold = TextStyle(
      fontSize: screenHeight/45,
      fontWeight: FontWeight.bold,
      fontFamily: 'Kontrapunkt Bob',
      color: Color(0xff585570)
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
                child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:10),
                    
                    child: Image.asset("logo.png",height: screenHeight/2,),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/20,
                      right: screenWidth/20,
                      top: screenWidth/30
                    ),
                      child: RichText(
                        text: TextSpan(
                          text: "\tFarmer Trendz",
                          style: richtext,
                          children: [
                            TextSpan(text: " is one of the emerging food brand in India. Our products are directly imported from farm and are 100% pure, fresh and natural with no preservatives added. As food being the mode of goodness, it increases the duration of life, purity one’s existence and give strength, health, happiness and satisfaction.", style: text)
                          ]
                        ),
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/20,
                      right: screenWidth/20,
                      // top: screenWidth/30
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: "",
                        style: text1,
                        children: [
                          TextSpan(text : "\t“You are what you eat” is an old saying. Our main purpose is to serve our customers pure and fresh food products. We focus on reintroducing traditional food values to new generation to make their roots strong and healthy.",style: text),
                        ]
                      )
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/20,
                      right: screenWidth/20,
                      top: screenWidth/30
                    ),
                    child: RichText(
                      text: TextSpan(text: "The",
                          style: text,
                        children: <TextSpan>[
                          TextSpan(text : " Farmer Trendz",style: richtext),
                          TextSpan(text: " we evokes a journey from ",style: text),
                          TextSpan(text : " Soil to Soul",style: richtext),
                          TextSpan(text: " ,delivering the purest degree of product in creation of a pure soul.Indian homemade food contains high nutritional value, and that’s what we preserve and cherish in our product. Our motto is to reintroduce traditional test of India to upcoming generation and nurture the roots of rural India. ",style: text),
                        ]
                      )
                      
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/20,
                      right: screenWidth/20,
                      top: screenWidth/30
                    ),
                    child: RichText(
                      text: TextSpan(text: "In today’s competitive world The ",
                          style: text,
                        children: <TextSpan>[
                          TextSpan(text : " Farmer Trendz",style: richtext),
                          TextSpan(text: " it’s the only company who delivers the fresh product direct from farm to your doorstep according to your need.  The ",style: text),
                          TextSpan(text : " Farmer Trendz",style: richtext),
                          TextSpan(text: " takes extreme care to preserve and maintain purity and freshness of our product. The  ",style: text),
                          TextSpan(text : " Farmer Trendz",style: richtext),
                          TextSpan(text: " takes utmost care while preserving our product without adding any preservative in our air tight packages in a complete hygienic environment.",style: text),
                        ]
                      )
                      
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/30,
                      right: screenWidth/30,
                      top: screenWidth/30
                    ),
                    child: RichText(
                      text: TextSpan(text: "We The ",
                          style: text,
                        children: <TextSpan>[
                          TextSpan(text : "Farmer Trendz",style: richtext),
                          TextSpan(text: " are emerging as a strong medium between farmers and consumers.",style: text),
                        ]
                      )
                      
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: screenWidth/20,
                      right: screenWidth/20,
                      top: screenWidth/30
                    ),
                    child: RichText(
                text: TextSpan(text: "VISION & MISSION",
                    style: richtext,
                  children: <TextSpan>[
                    TextSpan(text: "To reach the maximum consumer by delivering the best quality product and providing maximum benefits to the Farmers. Create a Brand Value and trust amongst the ",style: text),
                    TextSpan(text : "Consumer",style: richtext),
                    TextSpan(text: "  as well as the  ",style: text),
                    TextSpan(text : "Farmer.",style: richtext),
                  ]
                )
                
              ),
                  ),
                  
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: screenHeight/16,
                          color: Colors.orange,
                          child: Text("|",style: TextStyle(color: Colors.orange),),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PRATIKSHA SABLE", style: bold,),
                            Text("FOUNDER & DIRECTOR", style: bold,),
                          ],
                        ),
                      ],
                    )
                  )
                ],
              ),
              )
    );
  }
}