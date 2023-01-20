import 'package:capsone_project_babydawn/screens/widgets/accountwidget.dart';
import 'package:capsone_project_babydawn/screens/widgets/babyformwidet/babyform1.dart';
import 'package:capsone_project_babydawn/screens/widgets/homewidget.dart';
import 'package:capsone_project_babydawn/screens/widgets/searchwidget/searchwidget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  static const List<Widget> screenList = [
    HomeWidget(),
    SearchWidget(),
    BabyForm1(),
    AccountWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 53,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 20), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined, size: 20), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.source_outlined, size: 20),
                label: "Baby Form"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 20), label: "Account")
          ],
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
