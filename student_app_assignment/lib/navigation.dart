import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Dashboard/HomeScreen.dart';
import 'Registeration/login.dart';
import 'Registeration/register.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);

  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<MyNavigation> {

  int index = 0;
  final screens = [
    MyLogin(),
    MyRegister(),
    HomeScreen(), //dashboard

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.lightGreenAccent,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          
        ),

        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.redAccent,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.app_registration),
                label: "login/registeration page"),

            NavigationDestination(
                icon: Icon(Icons.dashboard),
                label: "Student Dashboard"),

            NavigationDestination(
                icon: Icon(Icons.account_box),
                label: "Profile"),

            NavigationDestination(
                icon: Icon(Icons.book_online),
                label: "Study Material"),
          ]
      ),
      ),


    );
  }
}
