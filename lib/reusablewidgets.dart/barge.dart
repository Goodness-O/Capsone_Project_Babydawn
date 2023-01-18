
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';

class BargeWidget extends StatelessWidget {
  const BargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          const Image(
            image: AssetImage(
              'assets/images/logo1.png',
            ),
            height: 70,
            width: 70,
          ),
          const SizedBox(height: 5),
          Text(
            'BABY DAWN',
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              color: black,
            ),
          ),
        ],
      ),
    );
  }
}
