import 'package:flutter/material.dart';
// import 'screens/main_screen.dart';
import 'screens/business_card_screen.dart';
import 'screens/resume_screen.dart';
import 'screens/predictor_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Call Me Maybe',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainTabController());
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    // Tab(icon: Icon(Icons.face)),
    Tab(icon: Icon(Icons.pets)),
    Tab(icon: Icon(Icons.assignment)),
    Tab(icon: Icon(Icons.help_outline)),
    // Tab(text: 'Business Card'),
    // Tab(text: 'Resume'),
    // Tab(text: 'Predictor'),
  ];

  final screens = [
    BusinessCardScreen(),
    ResumeScreen(),
    PredictorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Week 5 Explorations',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: MainScreen(title: 'Call Me Maybe'),
    // );

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar:
            AppBar(title: Text('Call Me Maybe'), bottom: TabBar(tabs: tabs)),
        body: TabBarView(children: screens),
      ),
    );
  }
}
