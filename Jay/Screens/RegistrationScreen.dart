import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unibotdesign/Screens/LoginScreen.dart';
import 'package:unibotdesign/constants.dart';
import 'package:unibotdesign/components/AuthButtons.dart';
import 'package:unibotdesign/components/UserInputBox.dart';
class RegistrationScreen extends StatefulWidget {
  static final String ID ='/register';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                obscuretext: false,
                hintext: 'Name',
                icon: FontAwesomeIcons.userTie,
                keyboard: TextInputType.name),
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
            AuthButtons(text: 'Register', route: LoginScreen.ID),

          ],
        ),
      ),
    );
  }
}
