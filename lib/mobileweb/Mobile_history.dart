import 'package:flutter/material.dart';

class Mobile_History extends StatefulWidget {
  @override
  _Mobile_HistoryState createState() => _Mobile_HistoryState();
}

class _Mobile_HistoryState extends State<Mobile_History> {
  double screenHeight ,screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    var  namesBold = TextStyle(fontSize: screenWidth/70, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.w100);

    var  names = TextStyle(fontSize: screenWidth/40, fontFamily: 'Kontrapunkt Bob Light' , fontWeight: FontWeight.w100, color: Colors.green[900]);
    var richtext = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 30,
      color: Colors.lightGreen,
    );
    var text = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      fontWeight: FontWeight.bold,
      color: Color(0xff000000),
    );

    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/30,
      fontWeight: FontWeight.bold,
      color: Color(0xfff2f2f2),
    );
    var appBarTextTheme1=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/40,
      fontWeight: FontWeight.bold,
      color: Color(0xfff2f2f2),
    );
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage("history_Back.jpg",),
          //           fit: BoxFit.fill,    
          //         )
          //     ),
          // ),
          SingleChildScrollView(
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
                Stack(
                  fit: StackFit.loose,
                  children: [
          
            Container(
              // height: screenHeight/1.5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(screenWidth/30) ,
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(
                            width: screenWidth/2,
                          child: Text('Our journey begin with Primary flours such as Premium Wheat flour, Rice flour, Jwari flour, Bajari and Nachani flour and received overwhelming response from our customers as the loved and appreciated our product. We became their favourite within a short period.',style: names,)),
                        Container(
                       width: screenWidth/30,
                       height: screenHeight/4.5,
                      color: Colors.lightGreen,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text("Jun - Jul 2020", style: appBarTextTheme1,), 
                        ),
                      ),
                    ),
                        Container(
                          width: screenWidth/4,
                          child: Image.asset('prod1.png'),
                        )
                      ],),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:screenWidth/30, right:screenWidth/30,bottom: screenWidth/30,),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(
                          width: screenWidth/4,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.lightGreen,
                              width: 1,
                            )
                          ),
                          child: Image.asset('prod3.png'),
                        ),
                        Container(
                       width: screenWidth/25,
                       height: screenHeight/4.5,
                      color: Colors.lightGreen,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Text("Aug - Sep 2020", style: appBarTextTheme1,), 
                        ),
                      ),
                    ),
                        
                    Container(
                            width: screenWidth/2,
                          child: RichText(
                      text: TextSpan(text: "In our wide range of Special flours we The ",
                        style: names,
                      children: <TextSpan>[
                        TextSpan(text : " Farmer Trendz",style: richtext),
                        TextSpan(text: " have Besan  , Laddu Besan , Upavas Bhajani  Modak peethi and Mix grain atta. ",style: names),
                      ]
                    )
                    
                  )),
                      ],),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:screenWidth/30, right:screenWidth/30, bottom:screenWidth/30, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(
                            width: screenWidth/2,
                          child: RichText(
                              text: TextSpan(text: "We The ",
                                style: names,
                              children: <TextSpan>[
                                TextSpan(text : " Farmer Trendz",style: richtext),
                                TextSpan(text: " specialize in preserving the purity and the authenticity of taste .Authenticity that we cherish from our childhood.We pledge to deliver the best of ",style: names),
                                TextSpan(text : " Konkan",style: richtext),
                                TextSpan(text: " the mixture of taste and serenity. \n\nMalvani Vade peeth , Amboli Peeth, Ghavane Peeth , Kulid Peeth, Thali peeth, Kokam ,Suray Tandul, Ukada Tandul.",style: names),
                              ]
                            )
                            
                          ),
                        ),
                        Container(
                       width: screenWidth/30,
                       height: screenHeight/4.5,
                      color: Colors.lightGreen,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text("Oct - Nov 2020", style: appBarTextTheme1,), 
                        ),
                      ),
                    ),
                        Container(
                          width: screenWidth/4,
                          child: Image.asset('prod2.png'),
                        )
                      ],),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],)
                
                
              ],
            ),
          ),
        ],
      )
    );
  }
}