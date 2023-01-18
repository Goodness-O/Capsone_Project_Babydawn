import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/homepage.dart';
import 'package:capsone_project_babydawn/screens/login/passwordrecovery/forgotpassword.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
                  const HeadingFont(text: 'Sign In'),
                  SizedBox(height: screenHeight(context) * 0.04),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        ValidateForm(
                          controller: email,
                          text: "Email",
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
                        const SizedBox(height: 10),
                        ValidateForm(
                          controller: password,
                          text: "Password",
                          validator: (value) {
                            RegExp regex = RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                            if (value!.isEmpty) {
                              return "Password is required";
                            } else {
                              if (!regex.hasMatch(value)) {
                                return 'Enter valid password';
                              } else {
                                return null;
                              }
                            }
                          },
                        ),
                        const SizedBox(height: 30),
                        MyButton(
                            buttonText: 'SIGN IN',
                            onPressed: (() {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              }
                            }),
                            color: green),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage(),
                                ));
                          }),
                          child: const TextFormFont(text: 'Forgot password?'),
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
