import 'package:commons/commons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';

class Toasts extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ToastsState();
  }

}

class ToastsState extends State<Toasts>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton("Success Toast", () => onSuccessToastClick),
            SizedBox(height: 50),
            CustomButton("Error Toast", () => onErrorToastClick),
            SizedBox(height: 50),
            CustomButton("Warning Toast", () => onWarningToastClick),
            SizedBox(height: 50),
            CustomButton("Info Toast", () => onInfoToastClick),
          ],
        ),
      ),
    );
  }

  var onSuccessToastClick = () =>
    successToast("Success Message");

  var onErrorToastClick = () =>
    errorToast("Success Message");

  var onWarningToastClick = () =>
    warningToast("Success Message");

  var onInfoToastClick = () =>
    infoToast("Success Message");

}
