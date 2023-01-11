/*
 * @Description: home
 * @Author: Lewis
 * @Date: 2023-01-07 10:57:08
 * @LastEditTime: 2023-01-10 13:02:37
 * @LastEditors: Lewis
 */

import 'package:flutter/material.dart';
import 'package:trip_project/shared/screenTitle.dart';
import 'package:trip_project/shared/tripList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:   const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('images/bg.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(text:'Trips'),
            ),
            Flexible(child: TripList())
          ],
          )
      ),
    );
  }
}