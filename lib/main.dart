import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/screens/home_screen.dart';
import 'package:e_commerce_ui/screens/product_detail_screen.dart';
import 'package:e_commerce_ui/screens/products_screen.dart';
import 'package:e_commerce_ui/screens/temp_home.dart';
import 'package:flutter/material.dart';
// import 'dart:html';
import 'dart:io';

import 'screens/wesy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
