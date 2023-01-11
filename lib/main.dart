/*
 * @Description: 
 * @Author: Lewis
 * @Date: 2023-01-06 10:20:42
 * @LastEditTime: 2023-01-07 11:15:51
 * @LastEditors: Lewis
 */
import 'package:flutter/material.dart';
import 'package:trip_project/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Trips',
      home:Home()
    );
  }
}

