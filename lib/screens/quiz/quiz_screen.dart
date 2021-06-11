import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatefulWidget {
  final String isim;
  const QuizScreen({Key key, this.isim}) : super(key: key);
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Are you sure ?"),
              content: Text("Your progress will be deleted."),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text("Cancel")),
                TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text("Yes")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // Fluttter show the back button automatically
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
                // onPressed: _controller.nextQuestion,
                onPressed: () {
                  _controller.setUserName = widget.isim;
                  _controller.nextQuestion();
                },
                child: Text(
                  "Skip Question",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Body(),
      ),
    );
  }
}
