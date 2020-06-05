import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//class CustomButton extends StatefulWidget {
//  String title;
//  Widget nextView;
//  bool isNextScreen;
//
//  CustomButton(this.title, this.nextView, this.isNextScreen);
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return CustomButtonState(title, nextView, isNextScreen);
//  }
//}
//
//class CustomButtonState extends State<CustomButton> {
//  String title;
//  Widget nextView;
//  bool isNextScreen;
//
//  CustomButtonState(this.title, this.nextView, this.isNextScreen);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return RaisedButton(
//      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//      color: Colors.red,
//      textColor: Colors.white,
//      child: Text(title,
//          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
//      onPressed: () {
//        if (isNextScreen) {
//          Navigator.push(context, MaterialPageRoute(builder: (_) => nextView));
//        } else {
//          nextView;
//        }
//      },
//    );
//  }
//}

class CustomButton extends StatelessWidget{

  String title;
  VoidCallback onButtonPressed;

  CustomButton(this.title, this.onButtonPressed);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      color: Colors.red,
      textColor: Colors.white,
      child: Text(title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
      onPressed: onButtonPressed
    );

  }

}
