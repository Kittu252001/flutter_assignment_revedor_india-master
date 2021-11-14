import 'package:flutter/material.dart';

class Fitnesstracker extends StatefulWidget {
  @override
  _FitnesstrackerState createState() => _FitnesstrackerState();
}

class _FitnesstrackerState extends State<Fitnesstracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
    );
  }
}
