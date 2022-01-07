import 'package:flutter/material.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/assignments.dart';

class WritingAnswer extends StatefulWidget {
  const WritingAnswer({Key? key}) : super(key: key);

  @override
  _WritingAnswerState createState() => _WritingAnswerState();
}

class _WritingAnswerState extends State<WritingAnswer> {
  TextEditingController _answer = TextEditingController();

  Future<void> navigateToAssignment(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Assignments()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ANSWER PORTAL",
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
          color: Colors.grey,
          child: ListView(children: [
            SizedBox(
              height: 20,
              child: Text(
                "Question(s)",
                style: TextStyle(fontFamily: "Futura"),
              ),
            ),
            Text(
              c.assignment[c.storeA],
              style: TextStyle(
                fontFamily: "Futura",
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
              child: Text(
                "Answer(s)",
                style: TextStyle(fontFamily: "Futura"),
              ),
            ),
            TextField(
              controller: _answer,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                labelText: "Enter the Answer(s)",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                c.answer.add(_answer.text);
                c.answerStudents.add(c.nameS[c.storeS]);
                c.answerClass.add(c.classS[c.storeS]);
                c.answerSection.add(c.secS[c.storeS]);
                c.answerGrades.add("N.A.");
                c.answerComments.add("N.A.");
                c.answerCompleted.add(true);
                c.answerQuestion.add(c.assignment[c.storeA]);
                c.answerNames.add(c.assignmentName[c.storeA]);
                _answer.clear();
                navigateToAssignment(context);
              },
              child: Text(
                "Submit",
                style: TextStyle(fontFamily: "Futura"),
              ),
            )
          ])),
    );
  }
}