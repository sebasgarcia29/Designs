import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:desing/screens/basic_design.dart';
import 'package:desing/screens/scroll_design.dart';
import 'package:desing/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: _TempHomeScreen(),
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (context) => BasicDesign(),
        'scroll_screen': (context) => ScrollScreen(),
        'home_screen': (context) => HomeScreen(),
      },
    );
  }
}

class _TempHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello'),
        Text('Hello'),
      ],
    );
  }
}
