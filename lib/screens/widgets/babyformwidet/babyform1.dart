import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/widgets/babyformwidet/babyform2.dart';
import 'package:flutter/material.dart';

class BabyForm1 extends StatefulWidget {
  const BabyForm1({super.key});

  @override
  State<BabyForm1> createState() => _BabyForm1State();
}

class _BabyForm1State extends State<BabyForm1> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController hospitalname = TextEditingController();
  final TextEditingController deliverydoctor = TextEditingController();
  final TextEditingController fathername = TextEditingController();
  final TextEditingController mothername = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController idnumber = TextEditingController();
  final TextEditingController date = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Column(
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
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 119.7),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingFont(text: 'Baby Record Entry'),
                SizedBox(height: screenHeight(context) * 0.02),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      ValidateForm(
                        text: 'Hospital name:',
                        controller: hospitalname,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Hospital name is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      ValidateForm(
                        text: 'Delivery doctor:',
                        controller: deliverydoctor,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Delivery doctor is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      ValidateForm(
                        text: "Father's name:",
                        controller: fathername,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Father's name is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      ValidateForm(
                        text: "Mother's name:",
                        controller: mothername,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Mother's name is required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      ValidateForm(
                          text: 'Address:',
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Address is required";
                            } else {
                              return null;
                            }
                          },
                          controller: address),
                      const SizedBox(height: 10),
                      ValidateForm(
                          text: 'ID Number:',
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "ID Number is required";
                            } else {
                              return null;
                            }
                          },
                          controller: idnumber),
                      const SizedBox(height: 10),
                      ValidateForm(
                          text: 'Date:',
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Date is required";
                            } else {
                              return null;
                            }
                          },
                          controller: date),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SecondButton(
                            buttonText: 'SAVE',
                            color: green,
                            onPressed: () {},
                          ),
                          SecondButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BabyForm2(),
                                  ));
                            },
                            buttonText: 'CONTINUE',
                            color: green,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
