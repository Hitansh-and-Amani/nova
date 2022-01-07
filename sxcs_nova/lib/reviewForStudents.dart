import 'package:flutter/material.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/assignments.dart';

class ReviewForStudents extends StatefulWidget {
  const ReviewForStudents({Key? key}) : super(key: key);

  @override
  _ReviewForStudentsState createState() => _ReviewForStudentsState();
}

class _ReviewForStudentsState extends State<ReviewForStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "REVIEW FOR STUDENTS",
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
            Text(
              c.answerGrades[c.storeAns],
              style: TextStyle(
                fontFamily: "Futura",
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              c.answerComments[c.storeAns],
              style: TextStyle(
                fontFamily: "Futura",
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
          ])),
    );
  }
}