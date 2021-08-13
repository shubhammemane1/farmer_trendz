
import 'package:FarmerTrendz/Product_view.dart';
import 'package:FarmerTrendz/class/product.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_Product_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Mobile_prod extends StatefulWidget {
  
  @override
  _Mobile_prodState createState() => _Mobile_prodState();
}

class _Mobile_prodState extends State<Mobile_prod> {
  double screenHeight ,screenWidth;


  int index=0;

  List<product> flour_product=[
    product(img: "wheat_to_Display.jpg", name: "Premium wheat flour",health:  "Health Benifits",b1: "1. Controls Obesity",b2: "2.Prevents type 2 Diabetes", b3: "3.Reduces Chronic Inflammation", b4:"4.Protects against Coronary Diseases" , b5: "5.Prevents Breast Cancer",b6 :"6.Prevents Childhood Asthma",desc: "While considering the need of our consumer we hand pick the produce from farmer grain by grain, and deliver the best flour in its class. That enhances the test and softness of the food prepared from our product. The Farmer Trendz ensures to preserve the softness of food made from our product for longer time, even days.\n\nNow enjoy soft and fluffy Rotis made from Farmer Trendz’s premium and finest quality Wheat Flour harvested and chosen specially from the fields of Madhya Pradesh."),
    product(img: "Rice_Flour.jpg", name: "Rice Flour",health:  "Health Benifits", b1: "1.Great Source of Energy",b2: "2.Controls Blood Pressure",b3: "3.Good Source of Vitamin B & Iron",b4 :"4.Cancer Protection",b5: "5.Excellent Source of Magnesium",b6:"6.High Nutritional Value",desc: "Farmer Trendz brings you finely grind and milled Rice Flour from selected high quality Ricegrains,the most substitute for wheat flour.\n\nWhile considering the need of our consumer we hand pick the produce from farmer grain by grain, and deliver the best flour in its class. That enhances the test and softness of the food prepared from our product. The Farmer Trendz ensures to preserve the softness of food made from our product for longer time, even days."),
    product(img: "Jawari_Flour.jpg", name: "Jawari Flour ",health:  "Health Benifits",b1: "1.Improves Digestion",b2: "2.Improves Circulation",b3: "3.Boosts Heart Health",b4: "4.Energy Booster",b5: "5.Controls Diabetes",b6: "6.Packed with Vitamins, Minerals & Micronutrients", desc: "Bringing you superior quality Jowar Flour obtained from finely picked Jowar by our Indian Farmers and delivering directly at your door step.\n\nWhile considering the need of our consumer we hand pick the produce from farmer grain by grain, and deliver the best flour in its class. That enhances the test and softness of the food prepared from our product. The Farmer Trendz ensures to preserve the softness of food made from our product for longer time, even days."),
    product(img: "Bajri_Flour.jpg", name: "Bajri Flour",health:  "Health Benifits",b1: "1.High in Protein & Fiber ", b2: "2.Relives Constipation",b3: "3.Good for Endurance",b4: "4.Good for Bones, Skin & Eyes",b5: "5.Rich in Antioxidants",b6: "6.Lowers Blood Pressure", desc: "Farmer Trendz’s Bajra Flour made by grinding the ripe, dried and harvested best quality Bajra grains. It’s nutty flavor makes your regular diet extremely tasty and can be used traditionally for a longer period.\n\nWhile considering the need of our consumer we hand pick the produce from farmer grain by grain, and deliver the best flour in its class. That enhances the test and softness of the food prepared from our product. The Farmer Trendz ensures to preserve the softness of food made from our product for longer time, even days."),
    product(img: "Nagli_Flour.jpg", name: "Nachani Flour",health:  "Health Benifits",b1: "1.Rich in Calcium",b2:"2.Natural Relaxant",b3: "3.High Fiber Content",b4: "4.Excellent Baby Food",b5: "5.Boosts Lactation" , b6: "6.Helps in Weight Loss", desc: "While considering the need of our consumer we hand pick the produce from farmer grain by grain, and deliver the best flour in its class. That enhances the test and softness of the food prepared from our product. The Farmer Trendz ensures to preserve the softness of food made from our product for longer time, even days.\nLooking for weight loss, here we are with the best quality and naturally grown Ragi in the form of fresh and untreated Ragi Flour."),
  ];
  List<product> special_flour=[
    product(img: "upvas_Bhajani.jpg", name: "Upvas Bhajani",health:  "",b1: "",b2: "",b3: "",b4: "",b5: "",b6: "", desc: "In india we believe in Upvas as a ritual to have fast and connect to your spiritual self, in Upvas Bhajani we The Farmer Trendz ensure the same while considering the ingredients such as Rajgira , Sabudana , Vari , Jeera wich has high nutritional value and we ensure the purity and quality at its best at The Farmer Trendz."),
    product(img: "thalipith.jpg", name: "Thalipith",health:  "",b1: "",b2: "",b3: "",b4: "",b5: "",b6: "",desc: "Thalipeeth is a multi-grain flour which ensures good intake of different flours/pulses in 1 single dish. It is a great source of vitamins, minerals and micro nutrients. Since it has low glycemic index it is recommended in diabetic management. Additionally it is low in calories & has high satiety therefore assists in weight loss."),
    product(img: "modak_peeth.jpg", name: "Modak Pith",health:  "",b1: "",b2: "",b3: "",b4: "",b5: "",b6: "",desc: "Ganpati the most loved deity of India, God of prosperity who loves Modak. To ensure the prosperity and purity of Modak we The Farmer Trendz have picked the best Basmati rice and created our own secret recipes for the flour which results in testy modak that hold their softness for longer period of time."),
    product(img: "besan.jpg", name: "Besan",health:  "",b1: "",b2: "",b3: "",b4: "",b5: "",b6: "",desc: "We The Farmer Trendz pick finest Chana Daal and grind it at utmost hygienic environment, without adding any impurities that results in richness and golden yellow colour of Besan ."),
    product(img: "Laddu_Besan.jpg", name: "Laddu Besan",health:  "",b1: "",b2: "",b3: "",b4: "",b5: "",b6: "",desc: "For Laddu Besan we specially insure the ancient trick and technic of our forefathers to make laddu delicious.  "),
  
  ];
  List<product> spice_product=[
    product(img: "kulid_pith.jpg", name: "Kulid Pith ",health:  "Ingredients",b1: "Kulid",b2: "Udid daal",b3: "Dhane",b4: "Jeera",b5: "Kali Miri",b6: "BadiSauf",desc: '"the super pulse of India". The pulse is grown all across the country.\nKulid (Horsegram), with its excellent nutrient profile and plenty of antioxidants, protects you against kidney stones and gall stones and also prevents lifestyle disorders. \nsome amazing health benefits of kulid dal. These include burning fat and preventing kidney stones, dark circles and stretch marks. The dal is especially helpful when it comes to recovering from diseases like cold, flu and even migraines.'),
    product(img: "amboli_pith.jpg", name: "Amboli Pith ",health:  "Ingredients",b1: "Tandool",b2: "Udid daal",b3: "ChanaD daal",b4: "Methi",b5: "",b6: "",desc: "Amboli is rich in thiamine, riboflavin and contains zero amount of anti-nutritional factor phytate. The combination of ingredients in amboli provides all the essential amino acids which are required to increase progesterone levels. Amboli is to be relished with gatti, tonak, sambarem, usaal, chutney or nallacho ross."),
    product(img: "Vade_pith.jpg", name: "Malvani Vade Pith",health:  "Ingredients",b1: "Rice",b2: "Wheat",b3: "Udid daal",b4: "Dhane",b5: "Jeera",b6: "Masala",desc: "Malvani vade has many health benefits provided by the rice flour and split skinned black gram; these ingredients provide the perfect balanced between carbohydrates and proteins. While this dish is basically a deep-fried snack, the spices in it aid digestion and help keep heartburn at bay."),
    product(img: "kokam.jpg", name: "Kokam ",health:  "Health benefits ",b1: "Lots of nutrients.",b2: "Kokum is good for digestion.",b3: "Kokum has anti-ageing properties",b4: "It has anti-inflammatory properties.",b5: "Ayurveda",b6: "It controls cholesterol and helps in weight loss.",desc: "specially From kokan"),
  ];


  @override
  Widget build(BuildContext context) {

    

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
                      
    var  names = TextStyle(fontSize: screenWidth/40, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.w200, color: Colors.green[900]);
    var  namesBold = TextStyle(fontSize: screenWidth/40, fontFamily: 'Kontrapunkt Bob' , fontWeight: FontWeight.w100);
    

    var appBarTextTheme=TextStyle(
      fontFamily: 'Kontrapunkt Bob',
      fontSize: screenWidth/30,
      fontWeight: FontWeight.bold,
      color: Color(0xfff2f2f2),
    );
    var product=[
      FlatButton(
        hoverColor: Color(0xffA8CF45),
        height: 40,
        child: Text("Flours", style: namesBold),
        onPressed: (){
          setState(() {
            index=0;
          });
        },
      ),
      FlatButton(
        hoverColor: Color(0xffA8CF45),
        height: 40,
        child: Text("Special Flours", style: namesBold),
        onPressed: (){
          setState(() {
            index=1;
          });
        },
      ),
      FlatButton(
        
        height: 40,
        hoverColor: Color(0xffA8CF45),
        child: Text("Kokan Special", style: namesBold),
        onPressed: (){
          setState(() {
            index=2;
          });
        },
      ),
      FlatButton(
        
        height: 40,
        hoverColor: Color(0xffA8CF45),
        child: Text("Groceries", style: namesBold),
        onPressed: (){
          setState(() {
            index=3;
          });
        },
      ),
      FlatButton(
        
        height: 40,
        hoverColor: Color(0xffA8CF45),
        child: Text("Spices", style: namesBold),
        onPressed: (){
          setState(() {
            index=4;
          });
        },
      ),
      FlatButton(
        
        height: 40,
        hoverColor: Color(0xffA8CF45),
        child: Text("Dry Fruits", style: namesBold),
        onPressed: (){
          setState(() {
            index=5;
          });
        },
      )
    ];

    _flours(){
      return Column(children: [
        Container(
          height: screenHeight/25,
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffa8cf45),
                    width: 1
                  ),
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))
              ),
              child: Text("Flours", style: namesBold,)),
            ),
          ),
          Container(
            color: Colors.white,
            child: GridView.builder(
              itemCount: flour_product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
              padding: EdgeInsets.all(screenWidth/120),
              shrinkWrap: true,
              itemBuilder: (BuildContext ctx , int i){
                return Container(
                  padding: EdgeInsets.all(screenHeight/120),
                  child: Card(
                    elevation: 0,
                    child: InkWell(
                      onTap: (){
                        // showAlert(context);
                        setState(() {
                          Navigator.of(context).pushNamed('/product_view');
                        });
                      },
                      child: Container(
                        height: screenHeight/15,
                        width: screenWidth/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                  child: Hero(
                                    tag: flour_product[i].name,
                                    child:  Image(
                                      image: AssetImage(flour_product[i].img),
                                      height: screenHeight/8,
                                    )
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                                      return Product_view(flour_product[i]);
                                    }));
                                  },
                                ),
                            FittedBox(child: Text(flour_product[i].name, style:names)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

    _specialFlours(){
      return Column(children: [
        Container(
          height: screenHeight/25,
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffa8cf45),
                    width: 1
                  ),
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))
              ),
              child: Text("Special Flours", style: namesBold,)),
            ),
          ),
          Container(
                        // height:screenHeight/2,
            color: Colors.white,
            child: GridView.builder(
              itemCount: special_flour.length,
              dragStartBehavior: DragStartBehavior.start,
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
              padding: EdgeInsets.all(screenWidth/120),
              shrinkWrap: true,
              itemBuilder: (BuildContext ctx , int i){
                return Container(
                  padding: EdgeInsets.all(screenHeight/120),
                  child: Card(
                    elevation: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Mobile_product_view(special_flour[i]);
                        }));
                      },
                      child: Container(
                        height: screenHeight/10,
                        width: screenWidth/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                  child: Hero(
                                    tag: special_flour[i].name,
                                    child: Image(
                                      image: AssetImage(special_flour[i].img),
                                      height: screenHeight/8,
                                    )
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                                      return Product_view(special_flour[i]);
                                    }));
                                  },
                                ),
                            Text(special_flour[i].name, style:names),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

    _spices(){
      return Column(children: [
        Container(
          height: screenHeight/25,
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffa8cf45),
                    width: 1
                  ),
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))
              ),
              child: Text("Kokan Swad", style: namesBold,)),
            ),
          ),
          Container(
                        // height:screenHeight/2,
            color: Colors.white,
            child: GridView.builder(
              itemCount: spice_product.length,
              dragStartBehavior: DragStartBehavior.start,
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
              padding: EdgeInsets.all(screenWidth/120),
              shrinkWrap: true,
              itemBuilder: (BuildContext ctx , int i){
                return Container(
                  padding: EdgeInsets.all(screenHeight/120),
                  child: Card(
                    elevation: 0,

                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Mobile_product_view(spice_product[i]);
                        }));
                      },
                      child: Container(
                        height: screenHeight/10,
                        width: screenWidth/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                  child: Hero(
                                    tag: spice_product[i].name,
                                    child: Image(
                                      image: AssetImage(spice_product[i].img),
                                      height: screenHeight/8,
                                    )
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                                      return Product_view(spice_product[i]);
                                    }));
                                  },
                                ),
                            Text(spice_product[i].name, style: names),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }
    _comingsoon(){
      return  Center(child: Text("Coming Soon", style: names,));
      
    }
    
        
    final widgetoption=[
      _flours(),
      _specialFlours(),
      _spices(),
      _comingsoon(),
      _comingsoon(),
      _comingsoon(),
    ];


    return Scaffold(
      
      body: Stack(children: [
        
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                      color: Color(0xffa8cf45),
                      // height: screenHeight/8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  Container(
                padding: const EdgeInsets.all(3),
                 child: ClipOval(
                 child: Image.network("https://i.ibb.co/f0FffTX/favicon.png",scale: 20,),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    margin: EdgeInsets.all(5),
                      width: screenWidth/4,
                      child: ListView.builder(
                        itemCount: product.length,
                        shrinkWrap: true,
                        itemBuilder: (context , i){
                          return Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffa8cf45),
                                width: 2,
                              )
                            ),
                            child: product[i]
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: widgetoption.elementAt(index),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      

      ],)
    );
  }
}












































