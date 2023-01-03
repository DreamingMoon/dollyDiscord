import 'package:dolly_discord/constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static const String id = 'Notifications';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdollycolor,
      appBar: AppBar(
        title: const Text('For You'),
      ),
    );
  }
}
