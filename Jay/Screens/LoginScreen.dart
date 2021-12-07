import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unibotdesign/Screens/WelcomeScreen.dart';
import 'package:unibotdesign/components/AuthButtons.dart';
import 'package:unibotdesign/components/UserInputBox.dart';
import 'package:unibotdesign/constants.dart';

class LoginScreen extends StatefulWidget {
  static final String ID ='/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
// letterSpacing: 0,
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
            UserInputBox(
              icon: FontAwesomeIcons.at,
              hintext: 'Email',
              obscuretext: false,
              keyboard: TextInputType.emailAddress,
            ),
            UserInputBox(
              icon: FontAwesomeIcons.key,
              hintext: 'Password',
              obscuretext: true,
              keyboard: TextInputType.text,
            ),
            AuthButtons(text: 'Login', route: WelcomeScreen.ID),
            Text(
              'Forgot Password ?',
              style: kSubtext,
            ),
          ],
        ),
      ),
    );
  }
}


