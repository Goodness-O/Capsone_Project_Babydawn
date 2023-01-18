import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/login/passwordrecovery/changepassword.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                  const HeadingFont(text: 'OTP Verification'),
                  SizedBox(height: screenHeight(context) * 0.04),
                  Text(
                    "Enter the verification code we just sent to your email address.",
                    style: TextStyle(
                        color: black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.004,
                        fontFamily: "Roboto"),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.04,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
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
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
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
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
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
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
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
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        MyButton(
                            buttonText: 'VERIFY',
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ChangePasswordPage(),
                                  ));
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
