import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.color});

  final String buttonText;
  final Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(buttonText,
              style: TextStyle(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto")),
        ),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  const SecondButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.color});

  final String buttonText;
  final Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 0,
        minimumSize: const Size(175, 60),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      child: Text(buttonText,
          style: TextStyle(
              color: white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto")),
    );
  }
}
