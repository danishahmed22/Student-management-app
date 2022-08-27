import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    //to get size
    var size = MediaQuery.of(context).size;

    //style
    var CardTextStyle = TextStyle(fontFamily: "Montserrat Regular", fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png'))
            ),
          ),

          SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(26.0),

                  child: Column(
                  children: <Widget>[

                    Expanded(

                      child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          crossAxisCount: 2,
                        children: <Widget>[

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                    'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                                height: 128,
                                ),
                                Text("Personal Data",
                                style: CardTextStyle,),
                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                                  height: 128,
                                ),
                                Text("Test",
                                  style: CardTextStyle,),
                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                                  height: 128,
                                ),
                                Text("Attendance",
                                  style: CardTextStyle,),
                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                                  height: 128,
                                ),
                                Text("Results",
                                  style: CardTextStyle,),
                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                                  height: 128,
                                ),
                                Text("Fee payment",
                                  style: CardTextStyle,),
                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                                  height: 128,
                                ),
                                Text("Test Schedule",
                                  style: CardTextStyle,),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, 'profile');
                                },
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: Colors.purpleAccent),

                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              )
          )
        ],
      ),
    );
  }
}