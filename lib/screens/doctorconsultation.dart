import 'package:flutter/material.dart';

class DoctorConsultation extends StatefulWidget {
  @override
  _DoctorConsultationState createState() => _DoctorConsultationState();
}

class _DoctorConsultationState extends State<DoctorConsultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Doctor Consultation'),
      ),
    );
  }
}
