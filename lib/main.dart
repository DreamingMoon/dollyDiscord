import 'package:dolly_discord/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Screens/direct_messages.dart';
import 'Screens/friends.dart';
import 'Screens/notification.dart';
import 'Screens/profile.dart';

void main() {
  runApp(dollyDesktop());
}

class dollyDesktop extends StatelessWidget {
  String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: ProfilePage().id, routes: {
      ProfilePage().id: (context) => ProfilePage(),
    });
  }
}
