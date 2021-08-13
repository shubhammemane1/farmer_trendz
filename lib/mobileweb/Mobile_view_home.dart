import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:footer/footer.dart';
import 'package:social_media_buttons/social_media_button.dart';


class PhoneWeb extends StatefulWidget {
  @override
  _PhoneWebState createState() => _PhoneWebState();
}

class _PhoneWebState extends State<PhoneWeb> {

  double screenHeight , screenWidth;


  var items =[
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("main1.jpg"),)
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("main2.jpg"),)
      ),
    )
  ];

  final List<Image> listImages = [
    Image.asset('wheat_to_Display.jpg'),
    Image.asset('Rice_Flour.jpg'),
    Image.asset('Jawari_Flour.jpg'),
    Image.asset('Bajri_Flour.jpg'),
    Image.asset('Nagli_Flour.jpg'),
  ];
  final List<Image> listImages1 = [
    Image.asset('besan.jpg'),
    Image.asset('Laddu_Besan.jpg'),
    Image.asset('thalipith.jpg'),
    Image.asset('modak_peeth.jpg'),
    Image.asset('upvas_Bhajani.jpg'),
    
  ];

  final List<Image> listImages2 = [
    Image.asset('amboli_pith.jpg'),
    Image.asset('kokam.jpg'),
    Image.asset('kulid_pith.jpg'),
    Image.asset('Vade_pith.jpg'),
    
  ];

  
  


  showAlert(BuildContext context ) {
    showDialog(

      context: context,
      builder: (BuildContext context) {
        return Container(
          height: screenHeight/4,
          width: screenWidth/4,
          child: AlertDialog(
            title: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                child:Text("Product Name"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: <Widget>[
              Column(
                children: [
                  Container(decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFA8Cf45),
                    )
                  ),
                      child: Image.asset('logo.png',scale: 3,)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.remove_circle),onPressed: (){},),
                      IconButton(icon: Icon(Icons.add_circle),onPressed: (){},),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  List<Step> steps = [
    Step(
      title: const Text('New Account'),
      isActive: true,
      state: StepState.indexed,
      content: Column(
        children: <Widget>[
          Text("hello")
        ],
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: const Text('Address'),
      content: Column(
        children: <Widget>[
          Text("Blah Blah")
        ],
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: const Text('Avatar'),
      subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ];


  


  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

//    var buttonTheme = Theme.of(context).appBarTheme.textTheme.button;
    var text =TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/50,
      fontWeight: FontWeight.w300,
      color: Colors.green[900]
    );
    var text1 =TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/30,
      fontWeight: FontWeight.bold,
      color: Colors.white
    );

    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/30,
      fontWeight: FontWeight.bold,
      color: Color(0xfff2f2f2),
    );
    var richtext = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 40,
      color: Colors.lightGreen,
    );
    _info(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          
          child: Image.asset('logo.png',height: screenHeight/4,)),
        Container(
          padding: EdgeInsets.all(10),
          child: RichText(
                text: TextSpan(text: "The",
                    style: text,
                  children: <TextSpan>[
                    TextSpan(text : " Farmer Trendz",style: richtext),
                    TextSpan(text: " we evokes a journey from ",style: text),
                    TextSpan(text : " soil to soul",style: richtext),
                    TextSpan(text: ", delivering the purest degree of product in creation of a pure soul.Indian homemade food contains high nutritional value, and that’s what we preserve and cherish in our product. Our motto is to reintroduce traditional test of India to upcoming generation and nurture the roots of rural India. We The ",style: text),
                    TextSpan(text: "Farmer Trendz",style: richtext),
                    TextSpan(text : " are emerging as a strong medium between farmers and consumers.", style: text),
                  ]
                )
                
              )
        ),
      ],
    );
  }
    return Scaffold(
        
      body: Stack(
        children: [
          //background
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("grains.jpg",),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Color(0xffa8cf45), BlendMode.color)
                  )
              ),
          ),

          //main page scrolling
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
          ],),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('mob_Diwali.jpg'),
                      fit: BoxFit.fill,
                    )
                  ),
                  height: screenHeight/1.5,
                  // child: Container(
                  //   margin: EdgeInsets.all(100),
                  //   child: 
                  // ),
                ),
                Container(
                  color: Colors.white,
                  // height: screenHeight/3,
                  child: CarouselSlider(
                    items: items,
                    options: CarouselOptions(
                      height: screenHeight/3,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.easeIn,
                      aspectRatio: 0,
                      viewportFraction: 1,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight/25,
                  color: Colors.transparent,
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.center, 
                      children: [
                        Image(
                          image: AssetImage("grains1.jpg"),
                          width: screenWidth,
                          fit: BoxFit.fitWidth,
                          filterQuality: FilterQuality.high,
                          colorBlendMode: BlendMode.darken,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              // height: screenHeight/1.5,
                              
                              // width: screenWidth/5,
                              child : CarouselSlider(
                                  options: CarouselOptions(
                                    autoPlay: true,
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true,
                                    autoPlayAnimationDuration: Duration(seconds:3),
                                    autoPlayCurve: Curves.easeInOut
                                  ),
                                  items: listImages,
                                )
                              ),
                        ),
                      ]
                    ),
                  ),

                Container(
                  height: screenHeight/20,
                  width: screenWidth-40,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffa8cf45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Our Special Products", style: text1,)),
                ),
                Container(
                  // height: screenHeight/30,
                  color: Colors.transparent,
                  child: Container(
                    child : CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlayAnimationDuration: Duration(seconds:1),

                      ),
                    items: listImages1,
                    )
                  ),
                ),
                Container(
                  height: screenHeight/30,
                  color: Colors.transparent,
                ),
                Container(
                  // height: 400,
                  width: screenWidth,
                  color: Colors.white,
                  child: _info(context),
                ),
                Container(
                  height: screenHeight/20,
                  width: screenWidth-40,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffa8cf45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Kokan Special", style: text1,)),
                ),
                Container(
                  // height: screenHeight/30,
                  color: Colors.transparent,
                  child: Container(
                    child : CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlayAnimationDuration: Duration(seconds: 2)
                      ),
                    items: listImages2,
                    )
                  ),
                ),
                
                Container(
                  height: screenHeight/30,
                  color: Colors.transparent,
                ),
                
                Container(

                  child: Footer(
                    backgroundColor: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Contact US :"),
                                    // Icon(Icons.phone),
                                    Text("+919321667669"),
                                  ],
                                ),
                                Text("Email : info.farmertrendz@gmail.com")
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Follow Us On :-"),
                                SizedBox(child: Text(" "),),
                            Container(
                              decoration: BoxDecoration(
                                color:Color(0xff585570),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: SocialMediaButton.facebook(url: 'https://www.facebook.com/farmertrendz',size: 15,
                              color: Colors.white,)),
                            SizedBox(child: Text(" "),),
                            Container(
                            decoration: BoxDecoration(
                                color:Color(0xff585570),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: SocialMediaButton.instagram(url: 'https://www.instagram.com/farmertrendz/', size: 15,
                              color: Colors.white,
                            )),
                            SizedBox(child: Text(" "),),
                            Container(
                              decoration: BoxDecoration(
                                color:Color(0xff585570),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: SocialMediaButton.linkedin(url: 'https://www.linkedin.com/in/farmer-trendz-3842701ba/',size: 15,
                              color: Colors.white,
                            )),
                              ],
                            ),
                            Column(
                              children: [
                                Text("© 2020 by Shubham Memane. "),
                                Text("Powered By Surya Industries"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );


  }
}
