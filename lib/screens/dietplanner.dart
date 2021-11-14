import 'package:flutter/material.dart';

class Dietplanner extends StatefulWidget {
  @override
  _DietplannerState createState() => _DietplannerState();
}

class _DietplannerState extends State<Dietplanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Diet Planner'),
      ),
    );
  }
}
