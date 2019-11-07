import 'package:airbnbclone/homepage/hompage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Airbnb());

class Airbnb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: HomePage(),
    );
  }
}
