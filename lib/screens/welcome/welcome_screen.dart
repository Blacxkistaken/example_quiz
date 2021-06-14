import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/level/level.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

import 'dart:io';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Future<bool> _onBackPressedd() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you want to quit ?"),
              content: Text("You can solve more tests!"),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text("Cancel")),
                TextButton(onPressed: () => exit(0), child: Text("Yes")),
              ],
            ));
  }

  final _mycontroller = TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onBackPressedd,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/bgg.jpg",
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2),
                    Text(
                      "Let's Play Quiz,",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text("Enter your informations below"),
                    Spacer(
                      flex: 2,
                    ),
                    TextField(
                      controller: _mycontroller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1C2341),
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white24),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      message,
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    InkWell(
                      onTap: () {
                        if (_mycontroller.text.length >= 3) {
                          print(_mycontroller.text);
                          Get.to(LevelScreen(
                            isim: _mycontroller.text,
                          ));
                        } else {
                          message = "Enter at least 3 characters";
                          setState(() {});
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                        decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(
                          "Lets Start Quiz",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
