import 'package:flutter/material.dart';

class Imagepicker extends StatefulWidget {
  Imagepicker({Key? key}) : super(key: key);

  @override
  _ImagepickerState createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
      ),
    );
  }
}
