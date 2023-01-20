import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:flutter/material.dart';

class ValidateForm extends StatelessWidget {
  const ValidateForm(
      {super.key,
      required this.validator,
      required this.controller,
      required this.text});

  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
        label: TextFormFont(text: text),
        filled: true,
        fillColor: const Color(0xffEBEBEB),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }
}

class SeeOnlyForm extends StatelessWidget {
  const SeeOnlyForm({super.key, required this.text, required this.isEnabled});
  final String text;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      decoration: InputDecoration(
        label: TextFormFont(text: text),
        filled: true,
        fillColor: const Color(0xffEBEBEB),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class RecordForm extends StatelessWidget {
  const RecordForm(
      {super.key, required this.prefixtext, required this.hinttext});
  final String prefixtext;
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 7),
            child: Text(prefixtext,
                style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    letterSpacing: 0.004))),
        hintText: hinttext,
        hintStyle: TextStyle(
            color: black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            letterSpacing: 0.004),
        filled: true,
        fillColor: const Color(0xffEBEBEB),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
