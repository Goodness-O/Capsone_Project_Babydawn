import 'package:capsone_project_babydawn/model/babyformmodel.dart';
import 'package:flutter/material.dart';

class BabyFormProvider with ChangeNotifier {
  final List babyformList = [];

  List get _babyformList => babyformList;

  void addBabyForm1(
      String hospitalname,
      String deliverydoctor,
      String fathername,
      String mothername,
      String address,
      String idnumber,
      String date) {
    babyformList.add(BabyFormModel1(
        hospitalname: hospitalname,
        deliverydoctor: deliverydoctor,
        fathername: fathername,
        mothername: mothername,
        address: address,
        idnumber: idnumber,
        date: date));
    notifyListeners();
  }

  void addBabyForm2(String time, String gender, String weight, String height,
      String headsize, String bloodgroup, String genotype) {
    babyformList.add(BabyFormModel2(
      time: time,
      gender: gender,
      weight: weight,
      height: height,
      headsize: headsize,
      bloodgroup: bloodgroup,
      genotype: genotype,
    ));
    notifyListeners();
  }
}
