import 'package:flutter/material.dart';
// import 'screens/main_screen.dart';
import 'screens/business_card_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/predictor_screen.dart';
import 'styles.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Call Me Maybe',
        theme: Styles.cmmTheme,
        home: MainTabController());
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.pets)),
    Tab(icon: Icon(Icons.assignment)),
    Tab(icon: Icon(Icons.help_outline)),
  ];

  final screens = [
    BusinessCardScreen(),
    ResumeScreen(),
    PredictorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: Styles.cmmTheme,
      home: DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Call Me Maybe'),
              bottom: TabBar(
                tabs: tabs,
                indicatorColor: Colors.black,
              )),
          body: TabBarView(children: screens),
        ),
      ),
    );
  }
}
