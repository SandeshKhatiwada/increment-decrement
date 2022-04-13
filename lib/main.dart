// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:inc_dec/screens/cart_screens.dart';

void main(){
  runApp(MyApp());
}
//const MaterialColor kPrimaryColor = const MaterialColor(...);

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: CartScreen(),
    );
  }
}



