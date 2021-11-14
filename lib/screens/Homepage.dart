import 'package:flutter/material.dart';
import 'package:flutter_assignment_revedor_india/screens/InputPage.dart';
import 'package:flutter_assignment_revedor_india/screens/MainDrawer.dart';
import 'package:flutter_assignment_revedor_india/screens/dietplanner.dart';
import 'package:flutter_assignment_revedor_india/screens/doctorconsultation.dart';
import 'package:flutter_assignment_revedor_india/screens/fintnesstracker.dart';
import 'package:flutter_assignment_revedor_india/screens/medicalrecords.dart';
import 'package:flutter_assignment_revedor_india/screens/settings.dart';
import 'package:flutter_assignment_revedor_india/screens/weighttracker.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf6f5e7),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Health tracker and calculator'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Dashboard",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blocks(
                      col: Colors.black,
                      img: Image.asset(
                        "images/bmicalculator.jpg",
                        height: 70,
                        width: 90,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputPage()));
                      },
                      title: Text(
                        "BMI Calculator",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )),
                  blocks(
                      col: Colors.blue,
                      img: Image.asset(
                        "images/fitnesstracker2.jpg",
                        height: 70,
                        width: 90,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Fitnesstracker()));
                      },
                      title: Text(
                        'FitnessTracker',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blocks(
                      col: Colors.white,
                      img: Image.asset(
                        'images/deitplanner.jpg',
                        height: 60,
                        width: 85,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dietplanner()));
                      },
                      title: Text('Diet Planner')),
                  blocks(
                      col: Colors.white,
                      img: Image.asset(
                        'images/weighttracker1.jpg',
                        height: 69,
                        width: 75,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Weighttracker()));
                      },
                      title: Text('WeightTracker')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blocks(
                      col: Colors.white,
                      img: Image.asset(
                        'images/doctorconsultation.jpg',
                        width: 90,
                        height: 70,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorConsultation()));
                      },
                      title: Text(' Consultation')),
                  blocks(
                      col: Colors.white,
                      img: Image.asset(
                        "images/medicalrecords.png",
                        height: 70,
                        width: 75,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Medicalrecords()));
                      },
                      title: Text("Medical records"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blocks(
                      col: Colors.white,
                      img: Image.asset(
                        'images/Settings.jpg',
                        width: 85,
                        height: 70,
                      ),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                      title: Text('Settings')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  blocks(
      {required Color col,
      required Image img,
      required VoidCallback onClick,
      required Text title}) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          margin: EdgeInsets.only(left: 5, top: 25, bottom: 10),
          padding: EdgeInsets.all(20),
          child: Column(children: [img, title])),
    );
  }
}
