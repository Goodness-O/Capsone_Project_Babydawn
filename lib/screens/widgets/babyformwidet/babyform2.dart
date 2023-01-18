import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class BabyForm2 extends StatefulWidget {
  const BabyForm2({super.key});

  @override
  State<BabyForm2> createState() => _BabyForm2State();
}

class _BabyForm2State extends State<BabyForm2> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  late bool enabled = false;
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  final _formkey = GlobalKey<FormState>();
  final TextEditingController time = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController weight = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController headsize = TextEditingController();
  final TextEditingController bloodgroup = TextEditingController();
  final TextEditingController genotype = TextEditingController();

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
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:
                                  const Icon(Icons.arrow_circle_left_outlined))
                        ],
                      ),
                    ),
                  ),
                  const BargeWidget()
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 259),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
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
                          text: 'Time:',
                          controller: time,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Time name is required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        ValidateForm(
                          text: 'Gender:',
                          controller: gender,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Gender is required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        ValidateForm(
                          text: "Weight:",
                          controller: weight,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Weight is required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        ValidateForm(
                          text: "Height:",
                          controller: height,
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
                            text: 'HeadSize:',
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "HeadSize required";
                              } else {
                                return null;
                              }
                            },
                            controller: headsize),
                        const SizedBox(height: 10),
                        ValidateForm(
                            text: 'BloodGroup:',
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "BloodGroup is required";
                              } else {
                                return null;
                              }
                            },
                            controller: bloodgroup),
                        const SizedBox(height: 10),
                        ValidateForm(
                          text: 'Genotype:',
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Genotype is required";
                            } else {
                              return null;
                            }
                          },
                          controller: genotype,
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/images/Group19175.png',
                                  width: 150.0, height: 150.0),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: (() {
                                  showModalBottomSheet(
                                      anchorPoint: const Offset(10, 10),
                                      enableDrag: true,
                                      context: context,
                                      builder: (context) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              leading: const Icon(Icons.photo),
                                              title: const Text('Gallery'),
                                              onTap: () {
                                                Navigator.pop(context);
                                                getImage(ImageSource.gallery);
                                              },
                                            ),
                                            ListTile(
                                              leading: const Icon(Icons.camera),
                                              title: const Text('Camera'),
                                              onTap: () {
                                                Navigator.pop(context);
                                                getImage(ImageSource.camera);
                                              },
                                            ),
                                          ],
                                        );
                                      });
                                }),
                                child: Text(
                                  'Change Profile Picture',
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                              onPressed: () {},
                              buttonText: 'VIEW RECORD',
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
      ),
    );
  }
}
