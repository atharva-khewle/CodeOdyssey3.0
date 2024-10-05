import 'package:codeodyssey3/Pages/Login.dart';
import 'package:flutter/material.dart';
import 'Pages/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        // '/insights': (context) => InsightsScreen(),
        // '/wallet': (context) => WalletScreen(),
        // '/more': (context) => MoreScreen(),
      },
    );
  }
}