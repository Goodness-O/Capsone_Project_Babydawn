import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/login/passwordrecovery/otp.dart';
import 'package:capsone_project_babydawn/screens/login/signin.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
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
                  const HeadingFont(text: 'Forgot Password?'),
                  SizedBox(height: screenHeight(context) * 0.04),
                  Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account",
                    style: TextStyle(
                        color: black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        letterSpacing: 0.004),
                  ),
                  SizedBox(height: screenHeight(context) * 0.04),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        ValidateForm(
                          controller: email,
                          text: 'Enter Email',
                          validator: (value) {
                            RegExp regex = RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                            if (value!.isEmpty) {
                              return "Email is required";
                            } else {
                              if (!regex.hasMatch(value)) {
                                return 'Enter valid email';
                              } else {
                                return null;
                              }
                            }
                          },
                        ),
                        const SizedBox(height: 40),
                        MyButton(
                            buttonText: 'SEND CODE',
                            onPressed: (() {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const OtpPage(),
                                    ));
                              }
                            }),
                            color: green),
                        const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextFormFont(text: "Remember password?"),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Signin(),
                                    ));
                              }),
                              child: const TextFormFont(text: 'Sign In'),
                            ),
                          ],
                        ),
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
