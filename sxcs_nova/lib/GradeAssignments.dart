import 'package:flutter/material.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'package:sxcs_nova/checking.dart';

class GradeAssignments extends StatefulWidget {
  const GradeAssignments({Key? key}) : super(key: key);

  @override
  _GradeAssignmentsState createState() => _GradeAssignmentsState();
}

class _GradeAssignmentsState extends State<GradeAssignments> {
  Future<void> navigateToReview(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CheckAssignment()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GRADE ASSIGNMENT",
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(children: [
          for (int i = 0; i < c.answerNames.length; i++)
            if (c.answerNames[i] == c.assignmentName[c.storeA] &&
                c.answerClass[i] == c.assignmentClass[c.storeA] &&
                c.answerSection[i] == c.assignmentSection[c.storeA])
              ElevatedButton(
                onPressed: () {
                  c.storeAns = i-1;
                  navigateToReview(context);
                },
                child: Text(
                  c.answerStudents[i],
                  style: TextStyle(fontFamily: "Futura"),
                ),
              ),
        ]),
      ),
    );
  }
}