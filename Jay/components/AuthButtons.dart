import 'package:flutter/material.dart';
import 'package:unibotdesign/constants.dart';

class AuthButtons extends StatelessWidget {
  AuthButtons({required this.text,required this.route});
  final String text,route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: kredcolour,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
        child: ListTile(
          title:Center(
            child: Text(
                text
            ),
          ),
        ),
      ),
    );
  }
}
