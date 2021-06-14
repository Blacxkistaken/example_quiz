import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'package:quiz_app/screens/level/level.dart';

class ScoreScreen extends StatefulWidget {
  final String isim;
  const ScoreScreen({Key key, this.isim}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    Future.delayed(Duration(seconds: 4), () {
      Get.to(LevelScreen(
        isim: widget.isim,
      ));
    });
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bgg.jpg",
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            /*SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),*/
            Column(
              children: [
                Spacer(flex: 3),
                Text(
                  "Score",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: kSecondaryColor),
                ),
                Spacer(),
                Text(
                  "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                  /*correctAns*/
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kSecondaryColor),
                ),
                Spacer(flex: 3),
                Image.asset(
                  "assets/images/launch_image.png",
                  scale: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "COMELY",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
