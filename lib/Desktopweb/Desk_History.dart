
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_node/timeline_node.dart';

class Desk_History extends StatefulWidget {
  @override
  _Desk_HistoryState createState() => _Desk_HistoryState();
}

class HomePageTimelineObject {
  final TimelineNodeStyle style;
  final String time;
  final String message;

  HomePageTimelineObject({this.style,this.time, this.message});
}

class _Desk_HistoryState extends State<Desk_History> {
  double screenHeight,screenWidth;

  

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    var  namesBold = TextStyle(fontSize: screenWidth/70, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.w100);

    var  names = TextStyle(fontSize: screenWidth/70, fontFamily: 'Kontrapunkt Bob Light' , fontWeight: FontWeight.w100, color: Colors.green[900]);
    var richtext = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 60,
      color: Color(0xffa8cf45),
    );
    var text = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      fontWeight: FontWeight.w300,
      color: Colors.green[900]
    );

//    var buttonTheme = Theme.of(context).appBarTheme.textTheme.button;

    var appBarTextTheme = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      color: Color(0xfff2f2f2),
    );
    var appBarTextTheme1 = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 120,
      color: Color(0xfff2f2f2),
    );
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xffa8cf45),
        leading: Container(
          padding: const EdgeInsets.all(3),
          child: ClipOval(
            child: Image.network(
              "https://i.ibb.co/f0FffTX/favicon.png",
              scale: 10,
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
      body: Stack(children: [
        

        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left : 55, right: 55), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                        width: screenWidth/2,
                      child: Text('Our journey begin with Primary flours such as Premium Wheat flour, Rice flour, Jwari flour, Bajari and Nachani flour and received overwhelming response from our customers as the loved and appreciated our product. We became their favourite within a short period.',style: names,)),
                    Container(
                       width: screenWidth/30,
                       height: screenHeight/3,
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
                  margin: EdgeInsets.only(right: 55, left: 55), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.lightGreen,
                          width: 2
                        )
                      ),
                      width: screenWidth/4,
                      child: Image.asset('prod3.png'),
                    ),
                    Container(
                       width: screenWidth/30,
                       height: screenHeight/3,
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
                  margin: EdgeInsets.only(left:55, right:55), 
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
                       height: screenHeight/3,
                      color: Colors.lightGreen,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Text("Oct - Nov 2020", style: appBarTextTheme1,), 
                        ),
                      ),
                    ),
                    
                    
                      Container(
                      width: screenWidth/4,
                      child: Image.asset('prod2.png'),
                    ),
                  ],),
                ),
              ],
            ),
          ),
        ),
      ],)
    );
  }
}