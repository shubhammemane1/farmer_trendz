import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:footer/footer.dart';
import 'package:social_media_buttons/social_media_button.dart';

class DesktopWeb extends StatefulWidget {
  @override
  _DesktopWebState createState() => _DesktopWebState();
}

class _DesktopWebState extends State<DesktopWeb> {
  double screenHeight, screenWidth;

  var items = [
    Image.asset(
      "main1.jpg",
      fit: BoxFit.fitWidth,
    ),
    Image.asset("main2.jpg", fit: BoxFit.fitWidth),
  ];

  final List<Image> listImages1 = [
    Image.asset('amboli_pith.jpg'),
    Image.asset('kokam.jpg'),
    Image.asset('kulid_pith.jpg'),
    Image.asset('Vade_pith.jpg'),
    
  ];

  final List<Image> listImages = [
    Image.asset('wheat_to_Display.jpg'),
    Image.asset('Rice_Flour.jpg'),
    Image.asset('Jawari_Flour.jpg'),
    Image.asset('Bajri_Flour.jpg'),
    Image.asset('Nagli_Flour.jpg'),
  ];
  final List<Image> listImages2 = [
    Image.asset('besan.jpg'),
    Image.asset('Laddu_Besan.jpg'),
    Image.asset('thalipith.jpg'),
    Image.asset('modak_peeth.jpg'),
    Image.asset('upvas_Bhajani.jpg'),
    
  ];

  // _cards(){
  //   return Card(
  //     color: Color(0xffa8cf45).withOpacity(0.5),
  //     child: InkWell(
  //       onTap: (){
  //         showAlert(context);
  //       },
  //       child: Container(
  //         // height: screenHeight/40,
  //         width: screenWidth/20,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Image.asset("logo.png", height: screenHeight/3),
  //             Text("Product Name", style: Theme.of(context).textTheme.headline1),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: screenHeight / 4,
          width: screenWidth / 4,
          child: AlertDialog(
            title: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                child: Text("Product Name"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: <Widget>[
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 2,
                        color: Color(0xFFA8Cf45),
                      )),
                      child: Image.asset(
                        'logo.png',
                        scale: 3,
                      )),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {},
                      ),
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
        children: <Widget>[Text("hello")],
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: const Text('Address'),
      content: Column(
        children: <Widget>[Text("Blah Blah")],
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

    var appBarTextTheme = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      color: Color(0xfff2f2f2),
    );
    var richtext = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 55,
      color: Color(0xffa8cf45),
    );
    var text = TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth / 70,
      fontWeight: FontWeight.w300,
      color: Colors.green[900],
    );
    _info(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            child: Image.asset(
              'logo.png',
              height: screenHeight / 2,
            )),
        Container(
            width: screenWidth/3,
          child: Column(
            children: [
              RichText(
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
            ],
          ),
        )
      ],
    );
  }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa8cf45),
        leading: Container(
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
      body: Stack(
        children: [
          //background
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "grains.jpg",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color(0xffa8cf45), BlendMode.hardLight))),
          ),

          //main page scrolling
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('diwali.jpg'),
                      fit: BoxFit.fill,
                    )
                  ),
                  height: screenHeight,
                  // width: screenWidth,
                  // child: Container(
                  //   margin: EdgeInsets.all(100),
                  //   child: 
                  // ),
                ),
                Container(
                  height: screenHeight / 15,
                  color: Colors.transparent,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('back.jpg'),
                      fit: BoxFit.fitWidth,
                    )
                  ),
                  height: screenHeight /2,
                  width: screenWidth,
                  child: CarouselSlider(
                    items: items,
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.easeIn,
                      aspectRatio: 0.4,
                      viewportFraction: 1,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 15,
                  color: Colors.transparent,
                ),
                Container(
                  height: screenHeight/1.5,
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
                                  ),
                                  items: listImages,
                                )
                              ),
                        ),
                      ]
                    ),
                ),
                Container(
                  width: screenWidth-40,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffa8cf45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  
                  child: Center(
                    child: Text("Our Special Products", style: TextStyle(
                        fontFamily: 'Kontrapunkt Bob',
                        fontSize: screenWidth / 70,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 1.5,
                  width: screenWidth/2,
                  
                  padding: EdgeInsets.all(8),
                    child: CarouselSlider(
                          items: listImages2,
                          
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 2),
                            autoPlayAnimationDuration: Duration(seconds: 1),
                            autoPlayCurve: Curves.easeIn,
                            aspectRatio: 0.4,
                            viewportFraction: 1,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                            pageSnapping: false,
                            
                          ),
                        ),
                ),
                Container(
                  color: Colors.white,
                  child: _info(context),
                ),
                Container(
                  height: screenHeight / 25,
                  color: Colors.transparent,
                ),
                Container(
                  width: screenWidth-40,
                  padding: EdgeInsets.all(8),
                  margin:  EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffa8cf45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  
                  child: Center(
                    child: Text("Kokan Special Products", style: TextStyle(
                        fontFamily: 'Kontrapunkt Bob',
                        fontSize: screenWidth / 70,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 1.8,
                  width: screenWidth,
                  color: Colors.transparent,
                  child: CarouselSlider(
                    items: listImages1,
                    options: CarouselOptions(

                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.easeIn,
                      aspectRatio: 0.4,
                      viewportFraction: 1,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight / 25,
                  color: Colors.transparent,
                ),
                Container(
                  height: 90,
                  child: Footer(
                    backgroundColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Contact Us - "),
                              // Icon(Icons.phone),
                              Text("  +919321667669"),
                            ],
                          ),
                          Text("Email : info.farmertrendz@gmail.com")
                        ],),
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
                              child: SocialMediaButton.facebook(url: 'https://www.facebook.com/farmertrendz',size: 20,
                              color: Colors.white,)),
                            SizedBox(child: Text(" "),),
                            Container(
                            decoration: BoxDecoration(
                                color:Color(0xff585570),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: SocialMediaButton.instagram(url: 'https://www.instagram.com/farmertrendz/', size: 20,
                              color: Colors.white,
                            )),
                            SizedBox(child: Text(" "),),
                            Container(
                              decoration: BoxDecoration(
                                color:Color(0xff585570),
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: SocialMediaButton.linkedin(url: 'https://www.linkedin.com/in/farmer-trendz-3842701ba/',size: 20,
                              color: Colors.white,
                            )),
                              ],
                            ),
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        
                        Text("© 2020 by Shubham Memane. "),
                        Text("Powered By Surya Industries"),
                      ],
                    ),
                      ],
                    )
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
