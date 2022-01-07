import 'package:flutter/material.dart';
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/GradeAssignments.dart';

class CheckAssignment extends StatefulWidget {
  const CheckAssignment({Key? key}) : super(key: key);

  @override
  _CheckAssignmentState createState() => _CheckAssignmentState();
}

class _CheckAssignmentState extends State<CheckAssignment> {
  TextEditingController _grade = TextEditingController();
  TextEditingController _comment = TextEditingController();

  Future<void> navigateToAnswer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAssignments()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "CHECK ASSIGNMENT",
            textAlign: TextAlign.center,
          )),
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
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
            Text(
              c.answer[c.storeAns],
              style: TextStyle(
                fontFamily: "Futura",
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _grade,
              decoration: InputDecoration(
                labelText: "Grade from A to E",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: _comment,
                decoration: InputDecoration(
                  labelText: "Enter comments for the student",
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                c.answerGrades[c.storeAns] = _grade.text;
                c.answerComments[c.storeAns] = _comment.text;
                navigateToAnswer(context);
              },
              child: Text(
                "Submit Review",
                style: TextStyle(fontFamily: "Futura"),
              ),
            )
          ],
        ),
      ),
    );
  }
}