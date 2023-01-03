import 'package:dolly_discord/constants.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String? email;
  String? password;
  static const String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdollycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/images/moon.png'),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          TextField(
            onChanged: (value) => email,
            decoration: const InputDecoration(
                hintText: 'Input e-mail',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)))),
          ),
          TextField(
            onChanged: (value) => password,
            decoration: const InputDecoration(
                hintText: 'Input password',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)))),
          ),
          const SizedBox(
            height: 25,
          ),
        const  Material(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            elevation: 6.0,
            child: MaterialButton(onPressed: () =>  , minWidth: 200,height: 42,child: Text('Log In'),),
          )
        ],
      ),
    );
  }
}
