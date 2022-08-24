import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {

  MyApp createState() => MyApp();
}
var education="nsut";

class MyApp extends State<home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vaibhav portfolio',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Vaibhav Sharma'),

    );
  }


}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.only(top: 10.0, bottom: 30.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //   Row(
          //     children:[
          //   // Text("Portfolio", style: TextStyle(fontSize: 25.0,color: Colors.black, decoration: TextDecoration.none),)
          // ],
          //
          // ),
          // Row(
          //
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children:[
          //     Text("Home", style: TextStyle(fontSize: 15.0,color: Colors.black, decoration: TextDecoration.none),),
          //     Text("About", style: TextStyle(fontSize: 15.0,color: Colors.black, decoration: TextDecoration.none),),
          //     Text("Contact", style: TextStyle(fontSize: 15.0,color: Colors.black, decoration: TextDecoration.none),),
          //   ],
          // ),
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image.asset("images/hi.gif",
              height: 125.0,
              width: 125.0, alignment: Alignment.center,),

            Material(
              child: InkWell(
                onTap: () {
                  String url = 'https://www.linkedin.com/in/vaibhavsharma24/';
                  if(kIsWeb) {
                    html.window.open(url, '_blank');
                  }
                  },
    // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/linkedin.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
            // Image.asset("images/linkedin.gif",
            //   height: 75.0,
            //   width: 75.0,alignment: Alignment.topRight,),

            , Material(
              child: InkWell(
                onTap: () {
                  launch('tel:+91 7062134288');
                }, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/call.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
            ,
            Material(
              child: InkWell(
                onTap: () {

                  launch('mailto:vaibhavbabu3475@gmail.com?subject=');
                }, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/google_3.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )

            ,
            Material(
              child: InkWell(
                onTap: () {

                  String url = 'https://github.com/vaibhavsha24/';
                  if(kIsWeb) {
                    html.window.open(url, '_blank');
                  }

                }, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/github.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )

            // Image.asset("images/google_3.gif",
            //   height: 175.0,
            //   width: 175.0,alignment: Alignment.center,),
            //
            // Image.asset("images/github.gif",
            //   height: 75.0,
            //   width: 75.0,alignment: Alignment.topRight,),

          ],
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 150.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      SizedBox(height: 50),

                      Text("Hy! I Am ", style: TextStyle(fontSize: 55.0,
                          color: Colors.black,
                          decoration: TextDecoration.none),)
                      ,
                      // Expanded(child: SizedBox.shrink()),
                      SizedBox(height: 10),
                      Text("Vaibhav Sharma ", style: TextStyle(fontSize: 70.0,
                          color: Colors.orangeAccent,
                          decoration: TextDecoration.none),)
                      ,
                      SizedBox(height: 10),
                      Text(
                        "An India based Software engineer who enjoys creating Apps and Websites.  ",
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.black,
                            decoration: TextDecoration.none),)
                      ,
                      Text("Looking for amazing oportunities to work with.  ",
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.black,
                            decoration: TextDecoration.none),)
                      ,
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      Row(

                        children: [
                          Text("I make Change by CODE!!!!.  ", style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.orangeAccent,
                              decoration: TextDecoration.none),)
                          ,
                          ElevatedButton(onPressed: () {
                            String url = 'https://drive.google.com/file/d/1r53IFragDfhC_G9QWe8BHEN8CaMfCYdC/view?usp=sharing';
                            if(kIsWeb) {
                              html.window.open(url, '_blank');
                            }

                          },
                            child: Text("Download Resume",
                              style: TextStyle(color: Colors.white),

                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.orangeAccent),
                            ),
                          )
                        ],
                      )

                      ,

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/tcs.png",
                            height: 200.0,
                            width: 250.0, alignment: Alignment.center,),


                          SizedBox(
                            width: 30,
                          ),

                          Image.asset("images/guitaa.png",
                            height: 75.0,
                            width: 175.0, alignment: Alignment.center,),

                          Image.asset("images/dolphin_software.png",
                            height: 100.0,
                            width: 250.0, alignment: Alignment.topRight,),

                        ],
                      ),
                    ]
                ),

                Row(
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Row(
                          children: [

                            Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.lightBlueAccent
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 200,),
                                Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.pinkAccent
                                  ),
                                )
                              ],
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Image.asset("images/vaibhavphoto.png",
                              height: 500.0,
                              width: 700.0,),
                          ],
                        )

                      ],
                    )
                  ],
                )


              ]
          ),
        ),


        Padding(padding: EdgeInsets.only(left: 150.0),
          child:
          Text("Technologies Worked on", style: TextStyle(color: Colors.black,
              fontSize: 25,
              decoration: TextDecoration.none),),

        ),

        Column(

          children: [

          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/android.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
            ,
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/kotlin.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/java.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/flutter.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/python.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {}, // Handle your callback.
                splashColor: Colors.brown.withOpacity(0.5),
                child: Ink(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/sap.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )

          ],
        ),

    ],
    ),

           Container(
              margin: EdgeInsets.only( top: 20.0),
              color:Colors.black,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Education", style: TextStyle(fontSize: 30.0,
                        decoration: TextDecoration.none,
                        color: Colors.white),)
                    ,
                    SizedBox(
                      height: 30,
                    )
                    ,SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:  Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 10.0,
                                    height: 150.0,
                                    child: const DecoratedBox(
                                      decoration: const BoxDecoration(
                                          color: Colors.orangeAccent
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Netaji Subhas University of Technology (NSUT),",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("MTech. in Computer Science Engineering,",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("2022-2024", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,
                                      Text("Delhi,India", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),

                                      Text("Machine Learning, Advance Data Strcuture and Alogrithms", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)

                                      ,Text("Advance Computer Networks", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),

                                  Image.asset("images/nsut.png",
                                    height: 100.0,
                                    width: 100.0, alignment: Alignment.topRight,),

                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
             Container(
               child: Row(
                 children: [
                   SizedBox(
                     width: 30,
                   ),
                   SizedBox(
                     width: 10.0,
                     height: 150.0,
                     child: const DecoratedBox(
                       decoration: const BoxDecoration(
                           color: Colors.orangeAccent
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Rajasthan Technical University, Kota (RTU),",style:TextStyle(fontSize: 20.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("BTech. in Computer Science Engineering,",style:TextStyle(fontSize: 20.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("2017-2021, 76%",style:TextStyle(fontSize: 15.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("Jaipur,India",style:TextStyle(fontSize: 15.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("Data Structures and Algorithms Discrete Mathematics Theory Of Computations, ",style:TextStyle(fontSize: 15.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("Object-Oriented Programming Compiler Design, Software Engineering",style:TextStyle(fontSize: 15.0,decoration: TextDecoration.none,color: Colors.white),)
                       ,Text("Computer Network,Operating Systems Database Management System.",style:TextStyle(fontSize: 15.0,decoration: TextDecoration.none,color: Colors.white),)

                     ],
                   ),
                   SizedBox(
                     width: 30,
                   ),

                   Image.asset("images/rtu.jpg",
                     height: 100.0,
                     width: 100.0,alignment: Alignment.topRight,),

                 ],
               ),
             )                 ],

                        ),
                      ),
                    )

                  ]
              ),

            ) ,

        Container(
          padding: EdgeInsets.only(top:15.0),

            child:Column(

              children:[
              Container(
              alignment: Alignment.center,

              child: Column
                (
                children: [
                 Column(
                   children: [
                     Text("My Skills",style: TextStyle(fontSize: 45.0,color: Colors.black, decoration: TextDecoration.none),),
                     Text("---What I Know---",style: TextStyle(fontSize: 15.0,color: Colors.orangeAccent, decoration: TextDecoration.none),)

                   ],
                 ),



                ],
              ),
            ),
                Container(

                  margin: EdgeInsets.only(top: 20.0),
                  child: Row
                    (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.95,
                           curve: Curves.linear,
                           backgroundColor: Colors.black,
                           barRadius:Radius.circular(20.0),
                           center: Text("Android 95.0%"),
                           restartAnimation: true,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           backgroundColor: Colors.black,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.9,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("Kotlin 90.0%"),
                           restartAnimation: true,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           backgroundColor: Colors.black,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.80,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("Java 80.0%"),
                           restartAnimation: true,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.70,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("Flutter 70.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.60,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("Dart 60.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.90,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("C  90.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.90,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("C++  90.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.80,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("DBMS 80.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,
                           progressColor: Colors.orangeAccent,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.85,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("DSA 85.0%"),
                           restartAnimation: true,
                           progressColor: Colors.orangeAccent,
                           backgroundColor: Colors.black,
                         ),
                         SizedBox(
                           height: 10.0,
                         ),
                         LinearPercentIndicator(
                           width: 750,
                           animation: true,
                           lineHeight: 20.0,
                           animationDuration: 2500,
                           percent: 0.60,
                           curve: Curves.linear,
                           barRadius:Radius.circular(20.0),
                           center: Text("Python 60.0%"),
                           restartAnimation: true,
                           backgroundColor: Colors.black,

                           progressColor: Colors.orangeAccent,
                         ),
                       ],
                     )

                    ],
                  ),
                ),

              ],
          )
        )
,
            Container(
              margin: EdgeInsets.only( top: 20.0),
              color:Colors.black,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Experience", style: TextStyle(fontSize: 30.0,
                        decoration: TextDecoration.none,
                        color: Colors.white),)
                    ,
                    SizedBox(
                      height: 30,
                    )
                    ,SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:  Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 10.0,
                                    height: 150.0,
                                    child: const DecoratedBox(
                                      decoration: const BoxDecoration(
                                          color: Colors.orangeAccent
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tata Consultancy Services",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("Assitant System Engineer,",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("July 2021-August 2022", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,
                                      Text("Ahmedabad,India", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),

                                      Text("Worked on Sap Security", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)


                                     ,Text("Created Roles and Users", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,Text("Solved Authorisation Related issue", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[   Image.asset("images/tcs.png",
                                      height: 200.0,
                                      width: 200.0, alignment: Alignment.center,),

                                  ])

                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 10.0,
                                    height: 150.0,
                                    child: const DecoratedBox(
                                      decoration: const BoxDecoration(
                                          color: Colors.orangeAccent
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dolphin Softwares",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("Android Developer",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("Nov 2020 - July 2021", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,
                                      Text("Jaipur,India", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),

                                      Text("Integrated Beacon, GPS, NFC Tags", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)


                                      ,Text("Made Custom dynamic UI", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,Text("Used LiveData, Job scheduler,", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),
                              Text("coroutines async and much more.", style: TextStyle(fontSize: 15.0,
                                  decoration: TextDecoration.none,
                                  color: Colors.white),)

                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),

                                  Container(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[   Image.asset("images/dolphin_software.png",
                                          height: 200.0,
                                          width: 200.0, alignment: Alignment.center,),

                                        ]),
                                  )

                                ],
                              ),
                            ),                ],

                        ),
                      ),
                    )

                  ]
              ),

            ) ,
            Container(
              color:Colors.black,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top:0.0,bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:  Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 10.0,
                                    height: 150.0,
                                    child: const DecoratedBox(
                                      decoration: const BoxDecoration(
                                          color: Colors.orangeAccent
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Guitaa Technology",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("Android Intern",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("July 2019-Sept 2019", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,
                                      Text("Jaipur,India", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),

                                      Text("Developed Music Learning app", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)


                                      ,Text("Development using Youtube, Retrofit Apis", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)

                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),

                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:[   Image.asset("images/guitaa.png",
                                        height: 200.0,
                                        width: 200.0, alignment: Alignment.center,),

                                      ])

                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 10.0,
                                    height: 150.0,
                                    child: const DecoratedBox(
                                      decoration: const BoxDecoration(
                                          color: Colors.orangeAccent
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Saxena Technology",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("Android Intern",
                                        style: TextStyle(fontSize: 20.0,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),)
                                      ,
                                      Text("January 2020 - May 2020", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,
                                      Text("Jaipur,India", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),

                                      Text("Build an e-commerce app and Customer ", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),
                                      Text(" Feedback app for Indian Army.", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)


                                      ,Text("Development using Firebase, Google Maps.", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                      ,Text("and Google Location APIs.", style: TextStyle(fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),

                                  Container(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[   Image.asset("images/android.png",
                                          height: 200.0,
                                          width: 200.0, alignment: Alignment.center,),

                                        ]),
                                  )

                                ],
                              ),
                            ),                ],

                        ),
                      ),
                    )

                  ]
              ),

            ) ,
            Container(
              margin: EdgeInsets.only( top: 20.0,left: 100.0),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("A Selection of Stuff I've Built", style: TextStyle(fontSize: 40.0,
                        decoration: TextDecoration.none,
                        color: Colors.black),)
                    ,
                    SizedBox(
                      height: 30,
                    )


                  ]
              ),

            ) ,
            Container(
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              child: Center(
                child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: 20.0),
                        child: Row(

                          children: [
                            SizedBox(
                              width: 10,
                            ),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  Text("Sang Chalo ", style: TextStyle(fontSize: 35.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.orangeAccent),),
                                  Container(
                                    padding: EdgeInsets.only(top:20.0),
                                    width: 500.0,
                                    child: Text("Sang Chalo is a Car Pool Android app. It is an application that allow users to pool "
                                        " their personal car with the riders going in same direction and divides the fare equally. "
                                        "I have used Google Maps, Google Place API, Location API, Firebase Database , Auth and much more.", style: TextStyle(fontSize: 20.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),),
                                  )

                                ])

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Image.asset("images/sangchalo.jpg",
                        height: 300.0,
                        width: 300.0, alignment: Alignment.center,),

                      ElevatedButton(onPressed: () {

                        String url = 'https://github.com/vaibhavsha24/sangchalo';
                        if(kIsWeb) {
                          html.window.open(url, '_blank');
                        }
                      },
                        child: Text("Github Repository",
                          style: TextStyle(color: Colors.white),

                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.orangeAccent),
                        ),
                      ) ,
                    ],

                  ),
                ),
            ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              color: Colors.black,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20.0),
                          child: Row(

                            children: [
                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text("Baate ", style: TextStyle(fontSize: 35.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.orangeAccent),),
                                    Container(
                                      padding: EdgeInsets.only(top:20.0),
                                      width: 500.0,
                                      child: Text("Baate is an Android Chat Application. Registered Users can have private chat with their contacts saved and are registered on the"
                                          "app. I build using Kotlin and used Firebase AUthentication and Firebease realtime database for the Chat.", style: TextStyle(fontSize: 20.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),),
                                    )

                                  ])

                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Image.asset("images/chat2.png",
                          height: 300.0,
                          width: 300.0, alignment: Alignment.center,),

                        ElevatedButton(onPressed: () {
                          String url = 'https://github.com/vaibhavsha24/Baate';
                          if(kIsWeb) {
                            html.window.open(url, '_blank');
                          }
                        },
                          child: Text("Github Repository",
                            style: TextStyle(color: Colors.white),

                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.orangeAccent),
                          ),
                        ) ,
                      ],

                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:20.0,bottom: 20.0),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20.0),
                          child: Row(

                            children: [
                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text("Canada Immigration App ", style: TextStyle(fontSize: 35.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.orangeAccent),),
                                    Container(
                                      padding: EdgeInsets.only(top:20.0),
                                      width: 500.0,
                                      child: Text("Canada Immigration is an app used by students who wishes to study at canada for their graduation or post graduation. It calcluates their scores bases various factors such as score in exams, graudation, years of experince and much more and give a idea about their admit chances. I build it using Flutter Dart and used firebase database auth and storage.", style: TextStyle(fontSize: 20.0,
                                          decoration: TextDecoration.none,
                                          color: Colors.black),),
                                    )

                                  ])

                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Image.asset("images/immigration.png",
                          height: 300.0,
                          width: 300.0, alignment: Alignment.center,),

                        ElevatedButton(onPressed: () {

                          String url = 'https://github.com/keshavsharma24/cigapp';
                          if(kIsWeb) {
                            html.window.open(url, '_blank');
                          }
                        },
                          child: Text("Github Repository",
                            style: TextStyle(color: Colors.white),

                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.orangeAccent),
                          ),
                        ) ,
                      ],

                    ),
                  ),
                ),
              ),
            ),


    ],
    )
    ,

    )
    );
  }
  void openLink() async {
    String url = 'https://flutter.dev';
    if(kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      if(await canLaunch(url)) {
        launch(url);
      }
    }
  }

}
