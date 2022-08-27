import 'package:flutter/material.dart';
import 'package:student_app_assignment/Profile/widgets/info_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const url ="student.me";
    const email ="student@gmail.com";
    const phone ="1234567890";
    const location ="Mumbai, India";
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[

              CircleAvatar(
                radius: 100,
                child: ClipRRect(
                  child: Image.asset('assets/images/user.jpeg',),
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
              Text("Student", style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat Regular",),),

              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey[800],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),

              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),





            ],
          ),
        ));
  }
}