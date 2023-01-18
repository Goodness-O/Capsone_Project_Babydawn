import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/screens/login/signin.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Splashscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: animate ? 180 : -180,
              left: animate ? 138 : -138,
              child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  child: const Image(
                      image: AssetImage('assets/images/logo1.png')))),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
            top: animate ? 315 : -315,
            left: animate ? 105 : -105,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: animate ? 1 : 0,
              child: Column(
                children: [
                  Text("BABY DAWN",
                      style: TextStyle(
                          color: black,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.004)),
                  Text("meet the new born...",
                      style: TextStyle(
                          color: black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.004)),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: animate ? 125 : -125,
            left: animate ? 30 : -30,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: animate ? 1 : 0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Signin(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: green,
                  elevation: 0,
                  minimumSize: const Size(360, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                child: const Text("GET STARTED"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
  }
}
