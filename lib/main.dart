import 'package:flutter/material.dart';
import 'package:opening_screen/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child:Container(
        child: Column(
          children: [
            productDetailCard(),
            productDetailCard(),            productDetailCard(),          ],
        ),
      ) )
    );
  }
}