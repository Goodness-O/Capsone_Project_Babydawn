import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/screens/widgets/babyformwidet/babyform1.dart';
import 'package:capsone_project_babydawn/screens/widgets/searchwidget/searchwidget.dart';

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [BargeWidget()],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 254.6),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      height: 250,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/baby.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  MyButton(
                      buttonText: 'SEARCH FOR RECORD',
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchWidget(),
                            ));
                      }),
                      color: green),
                  const SizedBox(height: 20),
                  MyButton(
                      buttonText: 'NEW BORN RECORD ENTRY',
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BabyForm1(),
                            ));
                      }),
                      color: green)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
