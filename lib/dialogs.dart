import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'package:commons/commons.dart';

class Dialogs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DialogsState();
  }

}

class DialogsState extends State<Dialogs> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            CustomButton("Success Dialog", () => onSuccessDialogClick(context)),
            SizedBox(height: 30),
            CustomButton("Error Dialog", () => onErrorDialogClick(context)),
            SizedBox(height: 30),
            CustomButton("Warning Dialog", () => onWarningDialogClick(context)),
            SizedBox(height: 30),
            CustomButton("Info Dialog", () => onInfoDialogClick(context)),
          ],
        ),
      ),
    );
  }

  var onSuccessDialogClick = (context) {
      successDialog(context, "Success Message");
  };

  var onErrorDialogClick = (context) {
    errorDialog(context, "Error Message");
  };

  var onWarningDialogClick = (context) {
    warningDialog(context, "Warning Message");
  };

  var onInfoDialogClick = (context) {
    infoDialog(context, "Info Message");
  };

}
