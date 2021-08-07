import 'package:flutter/material.dart';
// import 'package:flutter/src/rendering/sliver_persistent_header.dart';

import 'package:personal_dairy/homescreen/homeHeader.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
   static const String routeName = "/";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return 
      // backgroundColor: Colors.pink,
      // bottomNavigationBar: MyBottomNav(),
     SafeArea(child: HomeHeader());
    
  }

  // ignore: non_constant_identifier_names
  HeaderWidget() {
    return Text("HI\nhi");
  }
}

