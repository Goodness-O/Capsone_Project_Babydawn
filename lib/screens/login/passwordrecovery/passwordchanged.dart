import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/mediaquery.dart';
import 'package:capsone_project_babydawn/screens/login/signin.dart';
import 'package:flutter/material.dart';

class PasswordChangedPage extends StatefulWidget {
  const PasswordChangedPage({super.key});

  @override
  State<PasswordChangedPage> createState() => _PasswordChangedPageState();
}

class _PasswordChangedPageState extends State<PasswordChangedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Passwordchanged.png'),
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
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 100),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/Group19112(1).png'),
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.0001,
                  ),
                  const Text(
                    'Password Changed',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Roboto"),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFormFont(text: 'Click to sign in'),
                      const SizedBox(
                        width: 10,
                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
