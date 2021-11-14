import 'package:flutter/material.dart';

class Weighttracker extends StatefulWidget {
  @override
  _WeighttrackerState createState() => _WeighttrackerState();
}

class _WeighttrackerState extends State<Weighttracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Weight Tracker'),
      ),
    );
  }
}
