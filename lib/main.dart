import 'package:dolly_discord/Screens/notification.dart';
import 'package:dolly_discord/Screens/profile.dart';
import 'package:dolly_discord/Screens/register.dart';
import 'package:dolly_discord/constants.dart';
import 'package:flutter/material.dart';
import 'Screens/profile_blanks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dolly_discord/Screens/register.dart';

void main() {
  runApp(dollyDesktop());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: dollyDesktop.id,
      routes: {
        dollyDesktop.id: (context) => dollyDesktop(),
        ProfilePage.id: (context) => ProfilePage(),
        Notifications.id: (context) => Notifications(),
        'SignUp':(context) => const SignUp(),
      },
    );
  }
}

XFile? imgXFile;
final ImagePicker _picker = ImagePicker();

getImageFromGallery() async {
  imgXFile = await _picker.pickImage(source: ImageSource.gallery);
  setState(() {
    imgXFile;
  });
}

void setState(Null Function() param0) {}

class HomeNavigation extends StatefulWidget {
  int _archive = 0;
  static const List<Widget> navigatorOptions = <Widget>[
    Text('archive : 0'),
    Text('archive : 1'),
    Text('archive : 2'),
  ];
  void onNavTap(int archive) {
    _archive = archive;
  }

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdollycolor,
      body: dollyDesktop(),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
            icon: Icon(
          Icons.nightlight,
        )),
        const BottomNavigationBarItem(icon: Icon(Icons.notifications)),
        BottomNavigationBarItem(
            icon: GestureDetector(
          onTap: () => getImageFromGallery(),
          child: PicProfile(),
        ))
      ]),
    );
  }
}
