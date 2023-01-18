import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: green,
              padding: const EdgeInsets.only(top: 30, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                      Icons.arrow_circle_left_outlined)))
                        ],
                      ),
                    ),
                  ),
                  const BargeWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
