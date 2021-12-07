import 'package:flutter/material.dart';
import 'package:unibotdesign/Screens/HostelComplaintsScreen.dart';
import 'package:unibotdesign/Screens/LoginScreen.dart';
import 'package:flutter/services.dart';
import 'package:unibotdesign/Screens/RegistrationScreen.dart';
import 'package:unibotdesign/Screens/WelcomeScreen.dart';
import 'package:unibotdesign/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp( UniBot());
}

class UniBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor
      ),
      initialRoute: WelcomeScreen.ID,
      routes: {
        LoginScreen.ID : (context) => LoginScreen(),
        WelcomeScreen.ID: (context) => WelcomeScreen(),
        HostelComplaintScreen.ID: (context) => HostelComplaintScreen(),
        RegistrationScreen.ID : (context) => RegistrationScreen(),



      },
    );
  }
}


