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
          radius: const BorderRadius.all(Radius.circular(20)),
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: const Text(
            "WELL DONE",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontFamily: "Roboto"),
          ),
        )
      ],
    ).show();
  }
}
