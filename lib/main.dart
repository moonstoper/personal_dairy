import 'package:flutter/material.dart';
import 'package:personal_dairy/createDairy/main.dart';
import 'package:personal_dairy/home.dart';
// import 'package:personal_dairy/homescreen/homeHeader.dart';

// import 'package:personal_dairy/homescreen/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Personal Dairy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.pink,
          brightness: Brightness.light
        ),
        themeMode: ThemeMode.light,
        
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.pink,
          
        ),
        home: Main(),
        routes: {
          // Main.routeName:(context)=>Main(),
          EditDairy.routeName:(context)=>EditDairy()
        },
        );
        
  }
}

