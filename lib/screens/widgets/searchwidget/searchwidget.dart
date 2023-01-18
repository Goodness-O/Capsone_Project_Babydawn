import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String selectedPopupRoute = "Father's Name";
  final List<String> popupRoutes = <String>[
    "Father's Name",
    "Hospital Name",
    "LGA",
    "Date",
    "Time",
  ];

  _showDialog(BuildContext context) {
    return () async {
      String? selected = await showMenu<String>(
        context: context,
        initialValue: selectedPopupRoute,
        position: const RelativeRect.fromLTRB(100.0, 100.0, 60.0, 40.0),
        items: popupRoutes.map((String popupRoute) {
          return PopupMenuItem<String>(
            value: popupRoute,
            child: Text(popupRoute),
          );
        }).toList(),
      );
      if (selected != null) {
        setState(() {
          selectedPopupRoute = selected;
        });
      }
    };
  }

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
                          Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                      Icons.arrow_circle_left_outlined)))
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
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 315),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      height: 250,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/baby.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_outlined),
                      suffixIcon: GestureDetector(
                        onTap: _showDialog(context),
                        child: const Icon(Icons.filter_alt_outlined),
                      ),
                      hintText: "Search for baby Records",
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
                  const SizedBox(height: 20),
                  MyButton(
                      buttonText: 'SEARCH', onPressed: (() {}), color: green)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
