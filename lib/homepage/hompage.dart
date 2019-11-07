import 'package:airbnbclone/explore/explore.dart';
import 'package:airbnbclone/homepage/bottomMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExplorePage(),
      bottomNavigationBar: ButtonMenu(),
    );
  }
}
