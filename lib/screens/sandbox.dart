/*
 * @Description: Sandbox
 * @Author: Lewis
 * @Date: 2023-01-12 11:19:20
 * @LastEditTime: 2023-01-12 11:58:21
 * @LastEditors: Lewis
 */

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
   double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      duration: const Duration(seconds: 1),
      margin: EdgeInsets.all(_margin),
      width: _width,
      color: _color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('animate margin'),
            onPressed: () => setState(() => _margin = 50),
          ),
          ElevatedButton(
            child: const Text('animate color'),
            onPressed: () => setState(() => _color = Colors.purple),
          ),
          ElevatedButton(
            child: const Text('animate width'),
            onPressed: () => setState(() => _width = 400),
          ),
          ElevatedButton(
            child: const Text('animate opacity'),
            onPressed: () => setState(() => _opacity = 0),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 2),
            child: const Text(
              'hide me',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
