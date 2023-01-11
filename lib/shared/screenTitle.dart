/*
 * @Description: 
 * @Author: Lewis
 * @Date: 2023-01-10 09:53:25
 * @LastEditTime: 2023-01-10 10:24:18
 * @LastEditors: Lewis
 */
import 'package:flutter/material.dart';

 class ScreenTitle extends StatelessWidget {
  final String text;
  const ScreenTitle({ Key? key,this.text=''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  const TextStyle(
        fontSize:36,
        color:Colors.white,
        fontWeight: FontWeight.bold
      ),
    );
  }
}