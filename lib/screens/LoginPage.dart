// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_assignment_revedor_india/screens/Splashscreen.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter_assignment_revedor_india/Constrants.dart';
import 'Splashscreen.dart';

class LoginPage extends StatefulWidget {
  get kPrimaryColor => null;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpContoller = TextEditingController();

  void sendOTP() async {
    EmailAuth.sessionName = "session";
    var res = await EmailAuth.sendOtp(recieverMail: _emailController.text);
    if (res) {
      print("OTP Sent");
    } else {
      print("Retry again");
    }
  }

  void verifyOTP() {
    var res = EmailAuth.validate(
        recieverMail: _emailController.text, userOTP: _otpContoller.text);
    if (res) {
      print("OTP Verified");
    } else {
      print("Invalid OTP");
    }
    if (res) {
      Navigator.of(context).pop();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Splashscreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/welcome-2.png',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                        size: 25,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                      suffixIcon: TextButton(
                        child: Text(
                          'Send OTP',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => sendOTP(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _otpContoller,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter OTP",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.black,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        labelText: "OTP",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          verifyOTP();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: kInActiveCardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Verify OTP and Continue",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
