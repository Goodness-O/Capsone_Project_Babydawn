import 'package:capsone_project_babydawn/model/babyformmodel.dart';
import 'package:capsone_project_babydawn/provider/babyformprovider.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/Textformfield.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/alertpop.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/barge.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/buttons.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:capsone_project_babydawn/reusablewidgets.dart/font.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewRecord2 extends StatefulWidget {
  const ViewRecord2({super.key});

  @override
  State<ViewRecord2> createState() => _ViewRecord2State();
}

class _ViewRecord2State extends State<ViewRecord2> {
  final popup = AlertPop();
  @override
  Widget build(BuildContext context) {
    final babyformProvider = Provider.of<BabyFormProvider>(context);

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
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 259),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Group19138.png'),
                        radius: 90,
                        backgroundColor: Colors.transparent),
                    const SizedBox(height: 15),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("model1.idnumber",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                color: black,
                                fontWeight: FontWeight.w400))),
                    const SizedBox(height: 9),
                    SizedBox(
                      height: 379,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(8),
                        itemCount: babyformProvider.babyformList1.length,
                        itemBuilder: (context, index) {
                          BabyFormModel1 model1 =
                              babyformProvider.babyformList1[index];
                          return Column(
                            children: [
                              RecordForm(
                                  hinttext: model1.hospitalname,
                                  prefixtext: 'Hospital:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model1.deliverydoctor,
                                  prefixtext: 'Delivery Doctor:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model1.fathername,
                                  prefixtext: "Father's Name:"),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model1.mothername,
                                  prefixtext: "Mother's Name:"),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model1.address,
                                  prefixtext: 'Address:'),
                              const SizedBox(height: 10),
                              // RecordForm(
                              //     hinttext: model1.idnumber,
                              //     prefixtext: 'ID Number:'),
                              // const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model1.date, prefixtext: 'Date:'),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 442,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(8),
                        itemCount: babyformProvider.babyformList2.length,
                        itemBuilder: (context, index) {
                          BabyFormModel2 model2 =
                              babyformProvider.babyformList2[index];
                          return Column(
                            children: [
                              RecordForm(
                                  hinttext: model2.time, prefixtext: 'Time:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.gender,
                                  prefixtext: 'Gender:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.weight,
                                  prefixtext: "Weight:"),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.height,
                                  prefixtext: "Height:"),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.headsize,
                                  prefixtext: 'HeadSize:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.bloodgroup,
                                  prefixtext: 'BloodGroup:'),
                              const SizedBox(height: 10),
                              RecordForm(
                                  hinttext: model2.genotype,
                                  prefixtext: 'GenoType:'),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    MyButton(
                        buttonText: 'PRINT',
                        onPressed: (() {
                          popup.alert(context, "PRINTED");
                        }),
                        color: red),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
