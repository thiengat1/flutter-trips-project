/*
 * @Description: 
 * @Author: Lewis
 * @Date: 2023-01-10 14:05:07
 * @LastEditTime: 2023-01-10 14:40:18
 * @LastEditors: Lewis
 */
import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.favorite,
          color: Colors.grey[400],
          size: 30,
        ),
        onPressed: () {});
  }
}
