/*
 * @Description: 
 * @Author: Lewis
 * @Date: 2023-01-10 14:05:07
 * @LastEditTime: 2023-01-13 13:53:15
 * @LastEditors: Lewis
 */
import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  bool isFav = false;
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;
  late Animation<double> _curve;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);


        _curve=CurvedAnimation(
          parent: _controller,
          curve: Curves.slowMiddle
          );

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_curve);

        _sizeAnimation=TweenSequence(
          <TweenSequenceItem<double>>[
            TweenSequenceItem(
              tween: Tween<double>(begin:30,end: 50 ), 
              weight: 50
              ),
            TweenSequenceItem(
              tween: Tween<double>(begin:50,end: 30 ), 
              weight: 50
              ),
          ]
        ) 
        .animate(_curve);

    _controller.addListener(() {
      setState(() {});
      print(_controller.value);
      print(_colorAnimation.value);
    });
    _controller.addStatusListener((status) {
      print(status);
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
            icon: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: _sizeAnimation.value,
            ),
            onPressed: () {
              isFav ? _controller.reverse() : _controller.forward();
            });
      },
    );
  }
}
