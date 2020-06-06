import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruicommonssample/custom_button.dart';
import 'package:flutteruicommonssample/dialogs.dart';

import 'toasts.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomButton("Dialogs", Colors.red, () => onDialogsClick(context)),
          SizedBox(height: 50),
          CustomButton("Toasts", Colors.red, () => onToastsClick(context)),
        ],
      ),
    ));
  }

   var onDialogsClick = (context) =>
     Navigator.push(context, MaterialPageRoute(builder: (_) => Dialogs()));

  var onToastsClick = (context) =>
    Navigator.push(context, MaterialPageRoute(builder: (_) => Toasts()));


}
