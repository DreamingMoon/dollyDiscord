import 'package:dolly_discord/Screens/login.dart';
import 'package:dolly_discord/constants.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);



  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 
static const String id ='SignUp';
   String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdollycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
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
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              elevation: 6.0,
              child: MaterialButton(onPressed: () =>  , minWidth: 200,height: 42,child: Text('Register'),),
            )
          ],
        ),
      ),
    );
  }
}
