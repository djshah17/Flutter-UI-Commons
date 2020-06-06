import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String title;
  Color buttonColor;
  VoidCallback onButtonPressed;

  CustomButton(this.title, this.buttonColor, this.onButtonPressed);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomButtonState();
  }
}

class CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      color: widget.buttonColor,
      textColor: Colors.white,
      child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
      onPressed: widget.onButtonPressed
    );
  }
}