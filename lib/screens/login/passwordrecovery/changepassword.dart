import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/login/passwordrecovery/passwordchanged.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formkey = GlobalKey<FormState>();
  var confirmPass;
  final TextEditingController newpassword = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Signup.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [BargeWidget()],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingFont(text: 'Change Password'),
                  SizedBox(
                    height: screenHeight(context) * 0.04,
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        ValidateForm(
                          controller: newpassword,
                          text: 'Enter New Password',
                          validator: (value) {
                            confirmPass = value;
                            RegExp regex = RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                            if (value!.isEmpty) {
                              return "New password is required";
                            } else {
                              if (!regex.hasMatch(value)) {
                                return 'Enter valid password';
                              } else {
                                return null;
                              }
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ValidateForm(
                          controller: confirmpassword,
                          text: 'Confirm Password',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Confirm Password is required";
                            } else if (value != confirmPass) {
                              return "Password must be same as above";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 30),
                        MyButton(
                            buttonText: 'SAVE',
                            onPressed: (() {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PasswordChangedPage(),
                                    ));
                              }
                            }),
                            color: green),
                        const SizedBox(height: 15),
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
