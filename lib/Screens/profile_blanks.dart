import 'package:dolly_discord/constants.dart';
import 'package:flutter/material.dart';

class dollyDesktop extends StatelessWidget {
  static const String id = 'dollydesktop';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kdollycolor,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'dolly',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          body: const Center(
            child: Image(image: AssetImage('assets/images/moon.png')),
          ),
        ),
      ),
    );
  }
}
