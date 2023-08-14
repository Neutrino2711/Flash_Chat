import 'package:flutter/material.dart';
import 'registration_screen.dart';

const color_login = Colors.lightBlueAccent;
const color_register = Colors.blueAccent;

class RoundedButton extends StatelessWidget {
  RoundedButton({this.color,this.buttonTitle,this.onTap});

  final Color? color;
  final String? buttonTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
