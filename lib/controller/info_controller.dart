import 'package:flutter/material.dart';

class InfoController extends ChangeNotifier {
  String userName = '';
  String certifecation = '';
  String gender = '';
  changeName(String newName) {
    userName = newName;
  }
  changeCertification(String newCertifation) {
    certifecation = newCertifation;
  }
   changeGender(String newGender) {
    gender = newGender;
  }

}
