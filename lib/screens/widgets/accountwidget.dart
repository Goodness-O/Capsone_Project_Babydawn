import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/login/signin.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  late bool enabled = false;
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Column(
        children: [
          Container(
            color: green,
            padding: const EdgeInsets.only(top: 30, right: 14, left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Rectangle176(1).png'),
                            radius: 40,
                            backgroundColor: Colors.transparent),
                        const Padding(padding: EdgeInsets.only(left: 7)),
                        Text(
                          'Delta State Hospital,\nAsaba',
                          style: TextStyle(
                              color: white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              letterSpacing: 0.004),
                        ),
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
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 96.7),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingFont(text: 'Update Profile'),
                SizedBox(
                  height: screenHeight(context) * 0.02,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (() {
                          if (enabled) {
                            setState(() {
                              enabled = false;
                            });
                          } else {
                            setState(() {
                              enabled = true;
                            });
                          }
                        }),
                        child: const TextFormFont(
                          text: 'EDIT',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Form(
                  child: Column(
                    children: [
                      SeeOnlyForm(
                          text: 'Delta State Hospital,Asaba',
                          isEnabled: enabled),
                      const SizedBox(height: 10),
                      SeeOnlyForm(
                          text: 'deltastatehospitalasaba@gmail.com',
                          isEnabled: enabled),
                      const SizedBox(height: 10),
                      SeeOnlyForm(
                          text: '+234 806 9387 645', isEnabled: enabled),
                      const SizedBox(height: 10),
                      SeeOnlyForm(
                          text: 'Mr. Uche Jeremiah', isEnabled: enabled),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                                'assets/images/Rectangle176(1).png',
                                width: 150.0,
                                height: 150.0),
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      MyButton(
                          buttonText: 'CONFIRM',
                          onPressed: (() {}),
                          color: green),
                      const SizedBox(height: 25),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signin(),
                              ));
                        }),
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                              color: red,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 0.004),
                        ),
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
