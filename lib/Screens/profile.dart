import 'package:flutter/material.dart';
import 'package:dolly_discord/constants.dart';

class ProfilePage extends StatelessWidget {

String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                color: Colors.blueGrey,
              ),
              Container(
                height: 100,
                color: Colors.blue,
              ),
              const Positioned(
                top: 50,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60.0,
                ),
              ),
              const Positioned(
                child: Text('DREAMING MOON'),
                top: 175,
                left: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Kcard(
            lead: Icon(Icons.person),
            text1: Text('Set status'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Kcard(
            lead: Icon(Icons.account_circle),
            text1: Text('Account'),
          ),
          const Kcard(lead: Icon(Icons.edit), text1: Text('Profiles')),
          const Kcard(
              lead: Icon(Icons.shield), text1: Text('Privacy & Security')),
          const Kcard(lead: Icon(Icons.key), text1: Text('Authority Apps')),
          const Kcard(
              lead: Icon(Icons.desktop_windows), text1: Text('Devices')),
          const Kcard(lead: Icon(Icons.devices), text1: Text('Connections')),
          const Kcard(
              lead: Icon(Icons.account_box_rounded),
              text1: Text('Friend Requests')),
          const Kcard(lead: Icon(Icons.qr_code), text1: Text('Scan QR Code')),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Billing Settings'),
          ),
          const Kcard(lead: Icon(Icons.rocket), text1: Text('Get Nitro')),
          const Kcard(lead: Icon(Icons.diamond), text1: Text('Server Boost')),
          const Kcard(
              lead: Icon(Icons.card_giftcard_rounded),
              text1: Text('Nitro Gifting')),
          const Kcard(
              lead: Icon(Icons.rocket),
              text1: Text('Restore NItro Subsciption')),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('APP SETTINGS'),
          ),
          const Kcard(lead: Icon(Icons.keyboard_voice), text1: Text('Voice')),
          const Kcard(lead: Icon(Icons.palette), text1: Text('Appearance')),
          const Kcard(
              lead: Icon(Icons.accessibility_new_rounded),
              text1: Text('Accessibility')),
          const Kcard(lead: Icon(Icons.language), text1: Text('Language')),
          const Kcard(lead: Icon(Icons.image), text1: Text('Text & Images')),
          const Kcard(
              lead: Icon(Icons.web_rounded), text1: Text('Web Browser')),
          const Kcard(
              lead: Icon(Icons.notification_important),
              text1: Text('Notifications')),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('SUPPORT'),
          ),
          const Kcard(
              lead: Icon(Icons.question_mark_rounded), text1: Text('Support')),
          const Kcard(
              lead: Icon(Icons.info),
              text1: Text('Upload debug logs to support')),
          const Kcard(lead: Icon(Icons.info), text1: Text('Acknowledgements')),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('WHAT\'S NEW'),
          ),
          const Kcard(lead: Icon(Icons.info), text1: Text('What\'s new')),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            child: Card(
              elevation: 10.0,
              color: kcolor,
              child: const Center(
                child: Text(
                  'LOG OUT',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
