import 'package:capsone_project_babydawn/model/searchmodel.dart';
import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  final List<SearchModel> _searchList = [
    SearchModel(
      hospitalname: "Delta State Hospital,Asaba",
      deliverydoctor: "Dr. Jeremiah Uche",
      fathername: "Mr. Patrick Dennis",
      mothername: "Mrs. Patrick Cynthia",
      address: "iHUB, DBS Junction, Asaba",
      idnumber: "DSHA 0001",
      date: "16th Dec 2022",
      time: "05:30pm",
      gender: "Female",
      weight: "35Kg",
      height: "45cm",
      headsize: "10cm",
      bloodgroup: "O+",
      genotype: "AA",
    ),
    SearchModel(
      hospitalname: "St Luke Hospital, Asaba",
      deliverydoctor: "Dr. Chuks Ojefia",
      fathername: "Mr. Oghenovo Matthew",
      mothername: "Mrs. Oghenovo Tina",
      address: "Jesus Saves Road, Asaba",
      idnumber: "DSHA 0202",
      date: "1st Jan 2023",
      time: "12:30am",
      gender: "Male",
      weight: "50Kg",
      height: "5ocm",
      headsize: "12",
      bloodgroup: "B",
      genotype: "AA",
    ),
    SearchModel(
      hospitalname: "Federal Medical Center, Asaba",
      deliverydoctor: "Dr. Bebefagha Preye",
      fathername: "Mr. Oghenemaro Kelvin",
      mothername: "Mrs. Oghenemaro Julie",
      address: "Agric Road Beside FMC, Asaba",
      idnumber: "DSHA 1779",
      date: "12 Oct 2009",
      time: "04:00pm",
      gender: "Female",
      weight: "40Kg",
      height: "35cm",
      headsize: "10cm",
      bloodgroup: "A",
      genotype: "AC",
    ),
    SearchModel(
      hospitalname: "God's Hands Special Clinic, Agbor",
      deliverydoctor: "Dr. Powell-Tos Angel",
      fathername: "Mr. Jamestone Abbey ",
      mothername: "Mrs. Jamestone Sandra",
      address: "DLA Road, Asaba",
      idnumber: "DSHA 3670",
      date: "20th Jan 2023",
      time: "10:00am",
      gender: "Male",
      weight: "45Kg",
      height: "35cm",
      headsize: "12cm",
      bloodgroup: "B",
      genotype: "SS",
    ),
    SearchModel(
      hospitalname: "Oracle of God Specialist Clinic, Asaba",
      deliverydoctor: "Dr. Bridgetron Juliana",
      fathername: "Mr. Okoro Daniel",
      mothername: "Mrs. Okoro Oke",
      address: "Goverment House, Asaba",
      idnumber: "DSHA 0023",
      date: "31th Dec 2022",
      time: "09:58pm",
      gender: "Female",
      weight: "60Kg",
      height: "40cm",
      headsize: "15cm",
      bloodgroup: "O+",
      genotype: "AA",
    ),
  ];

  String _searchString = "";

  void changeSearchString(String searchString) {
    _searchString = searchString;
    notifyListeners();
  }
}
