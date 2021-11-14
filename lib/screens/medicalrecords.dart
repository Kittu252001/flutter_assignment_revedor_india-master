import 'package:flutter/material.dart';

class Medicalrecords extends StatefulWidget {
  Medicalrecords({Key? key}) : super(key: key);

  @override
  _MedicalrecordsState createState() => _MedicalrecordsState();
}

class _MedicalrecordsState extends State<Medicalrecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Medical Records'),
      ),
    );
  }
}
