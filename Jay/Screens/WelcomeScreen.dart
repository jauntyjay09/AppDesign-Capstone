import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibotdesign/Screens/HostelComplaintsScreen.dart';
import 'package:unibotdesign/Screens/LoginScreen.dart';
import 'package:unibotdesign/Screens/RegistrationScreen.dart';
import 'package:unibotdesign/components/AuthButtons.dart';
import 'package:unibotdesign/constants.dart';
import 'package:unibotdesign/components/UserInputBox.dart';

class WelcomeScreen extends StatefulWidget {
  static final String ID ='/';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('UniBud',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: kredcolour,
                  fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(
              height: 20.0,
              width: 135.0,
              child: Divider(
                color: Colors.blue.shade200,
              ),
            ),
            AuthButtons(text: 'Login', route: LoginScreen.ID),
            SizedBox(
              height: 20.0,
              width: 135.0,

            ),
            AuthButtons(text: 'Register', route: RegistrationScreen.ID)
          ],
        ),
      ),
    );
  }
}

