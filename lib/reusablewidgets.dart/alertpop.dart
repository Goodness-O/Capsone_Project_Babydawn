import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AlertPop {
  alert(context, String text) {
    return Alert(
      context: (context),
      type: AlertType.success,
      title: text,
      buttons: [
        DialogButton(
          color: green,
          radius: const BorderRadius.all(Radius.circular(20)),
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: const Text(
            "CONTINUE",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: "Roboto"),
          ),
        )
      ],
    ).show();
  }
}
