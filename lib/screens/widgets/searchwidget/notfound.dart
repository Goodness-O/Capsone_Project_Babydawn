import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/screens/widgets/searchwidget/searchwidget.dart';
import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  const NotFound({super.key});

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
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
            Container(
                height: 2000,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 98),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 35),
                    const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Group19141(1).png'),
                        radius: 75,
                        backgroundColor: Colors.transparent),
                    const SizedBox(height: 25),
                    Text("Search not found",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 15),
                    Text("Please check your spelling and try again later",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 15,
                            color: black,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 135),
                    MyButton(
                      buttonText: "TRY AGAIN",
                      color: red,
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchWidget()));
                      }),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
