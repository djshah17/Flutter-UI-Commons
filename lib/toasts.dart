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
    return OKToast(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton("Success Toast", Colors.amber, () => onSuccessToastClick()),
              SizedBox(height: 50),
              CustomButton("Error Toast", Colors.amber, () => onErrorToastClick()),
              SizedBox(height: 50),
              CustomButton("Warning Toast", Colors.amber, () => onWarningToastClick()),
              SizedBox(height: 50),
              CustomButton("Info Toast", Colors.amber, () => onInfoToastClick()),
            ],
          ),
        ),
      ),
    );
  }

  var onSuccessToastClick = () =>
    successToast("Success Message");

  var onErrorToastClick = () =>
    errorToast("Error Message");

  var onWarningToastClick = () =>
    warningToast("Warning Message");

  var onInfoToastClick = () =>
    infoToast("Info Message");

}
