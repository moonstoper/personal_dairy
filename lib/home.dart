import 'package:flutter/material.dart';
import 'package:personal_dairy/bottomNavbar.dart';
import 'package:personal_dairy/bottomTabNav.dart';
import 'package:personal_dairy/calendar/main.dart';
import 'package:personal_dairy/homescreen/main.dart';
import 'package:personal_dairy/providers/bottomnavProvider.dart';
import 'package:provider/provider.dart';

class Main extends StatelessWidget {
  //  static final String routeName="/";
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => WidgetIndex())],
      child: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CalenderScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context)
        .size
        .shortestSide; // get the shortest side of device
    final bool useMobileLayout = shortestSide < 900.0; // check for tablet
    return Scaffold(
      bottomNavigationBar: useMobileLayout ? MyBottomNavState() : null,
      body: _widgetOptions.elementAt(context.watch<WidgetIndex>().indexWidget),
      floatingActionButton: useMobileLayout
          ? FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => {Navigator.pushNamed(context, "/dairyEdit")},
            )
          : MyBottomNavTabState(),
      floatingActionButtonLocation:
          useMobileLayout ? FloatingActionButtonLocation.centerDocked : null,
    );
  }
}
