import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class LevelScreen extends StatefulWidget {
  final String isim;
  const LevelScreen({Key key, this.isim}) : super(key: key);

  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  Future<bool> _levelBack() {
    return Get.to(WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return WillPopScope(
      onWillPop: _levelBack,
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
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello ${widget.isim} ! ",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Choose your English level :",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(QuizScreen(
                                isim: widget.isim,
                              ));
                              _controller.resetValues(level: 0);
                            },
                            child: Container(
                              width: 265,
                              height: 130,
                              alignment: Alignment.center,
                              padding:
                                  EdgeInsets.all(kDefaultPadding * 0.75), // 15
                              decoration: BoxDecoration(
                                gradient: secondGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Text(
                                "A2",
                                style:
                                    Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.white60,
                                          fontSize: 85,
                                          letterSpacing: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(QuizScreen(isim: widget.isim));
                              _controller.resetValues(level: 1);
                            },
                            child: Container(
                              width: 265,
                              height: 130,
                              alignment: Alignment.center,
                              padding:
                                  EdgeInsets.all(kDefaultPadding * 0.75), // 15
                              decoration: BoxDecoration(
                                gradient: thirdGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Text(
                                "B1",
                                style:
                                    Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.white60,
                                          fontSize: 85,
                                          letterSpacing: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(QuizScreen(isim: widget.isim));
                              _controller.resetValues(level: 2);
                            },
                            child: Container(
                              width: 265,
                              height: 130,
                              alignment: Alignment.center,
                              padding:
                                  EdgeInsets.all(kDefaultPadding * 0.75), // 15
                              decoration: BoxDecoration(
                                gradient: fourthGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Text(
                                "B2",
                                style:
                                    Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.white60,
                                          fontSize: 85,
                                          letterSpacing: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
