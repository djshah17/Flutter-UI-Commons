import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'package:commons/commons.dart';

class Dialogs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DialogsState();
  }
}

class DialogsState extends State<Dialogs> {
  var onSuccessDialogClick =
      (context) => successDialog(context, "Success Message");

  var onErrorDialogClick = (context) => errorDialog(context, "Error Message");

  var onWarningDialogClick =
      (context) => warningDialog(context, "Warning Message");

  var onInfoDialogClick = (context) => infoDialog(context, "Info Message");

  var onConfirmationDialogClick = (context) => confirmationDialog(
      context, "Are you sure want to delete this?",
      title: "Confirm",
      negativeText: "Cancel",
      positiveText: "Delete",
      positiveAction: () {});

  var onWaitDialogClick = (context) => waitDialog(context,
      message: "Please Wait...", duration: Duration(seconds: 3));

  var onSingleInputDialogClick = (context) => singleInputDialog(
        context,
        title: "Input Dialog",
        label: "Name",
        validator: (value) {
          print("Validator: $value");
          return value.isEmpty ? "Required!" : null;
        },
        positiveAction: (value) {
          print("Submit: $value");
        },
        negativeAction: (value) {},
        neutralAction: () {
          print("neutral action");
        },
      );

  static var options = List<Option>()
    ..add(Option.view())
    ..add(Option.edit())
    ..add(Option.details())
    ..add(Option.delete());

  var onOptionDialogClick =
      (context) => optionsDialog(context, "Options", options);

  static var listPlayers = Set<SimpleItem>()
    ..add(SimpleItem(1, "Cristiano Ronaldo"))
    ..add(SimpleItem(2, "Lional Messi"))
    ..add(SimpleItem(3, "Neymar Jr."))
    ..add(SimpleItem(4, "Kylian Mbappe"))
    ..add(SimpleItem(5, "Kevin De Bruyne"))
    ..add(SimpleItem(6, "Eden Hazard"))
    ..add(SimpleItem(7, "Antoine Griezmann"))
    ..add(SimpleItem(8, "Robert Lewandowski"))
    ..add(SimpleItem(9, "Paul Pogba"));

  var onSingleSelectDialogClick = (context) => singleSelectDialog(
      context,
      "Select Favourite Player",
      listPlayers,
      (item) => print(item));

  static var selectedItems = Set<SimpleItem>();

  var onMultiSelectDialogClick = (context) => multiSelectDialog(
      context,
      "Select Favourite Players",
      listPlayers,
      selectedItems,
      (values) => selectedItems = values);

  var onRadioListDialogClick = (context) => radioListDialog(context,
      "Select Favourite Player", listPlayers, (item) => print(item));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              CustomButton("Success Dialog", Colors.amber,
                  () => onSuccessDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Error Dialog", Colors.amber,
                  () => onErrorDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Warning Dialog", Colors.amber,
                  () => onWarningDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Info Dialog", Colors.amber,
                  () => onInfoDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Confirmation Dialog", Colors.amber,
                  () => onConfirmationDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Wait Dialog", Colors.amber,
                  () => onWaitDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Single Input Dialog", Colors.amber,
                  () => onSingleInputDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Option Dialog", Colors.amber,
                  () => onOptionDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Single Select Dialog", Colors.amber,
                  () => onSingleSelectDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Multi Select Dialog", Colors.amber,
                  () => onMultiSelectDialogClick(context)),
              SizedBox(height: 30),
              CustomButton("Radio Dialog", Colors.amber,
                  () => onRadioListDialogClick(context)),
              SizedBox(height: 30),
            ],
          ),
        ),
      )),
    );
  }
}
