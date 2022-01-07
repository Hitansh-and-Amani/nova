import 'package:flutter/material.dart';
import 'package:sxcs_nova/profile.dart';
import 'package:sxcs_nova/notice.dart';
import 'package:sxcs_nova/assignments.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/answer.dart';
import 'package:sxcs_nova/reviewForStudents.dart';

class Assignments extends StatefulWidget {
  const Assignments({Key? key}) : super(key: key);

  @override
  _AssignmentsState createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  int index = 0, i = 0;

  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  Future<void> navigateToNotice(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));
  }

  Future<void> navigateToAnswer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WritingAnswer()));
  }

  Future<void> navigateToReview(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ReviewForStudents()));
  }

  Future<void> navigateToAssignments(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Assignments()));
  }

  Widget check(int i) {
    if (c.answer.length < 1)
      return ElevatedButton(
          onPressed: () {
            c.storeA = i;
            c.storeAns = 0;
            navigateToAnswer(context);
          },
          child: Text(
            c.assignmentName[i] + " - Assigned",
            style: TextStyle(fontFamily: "Futura"),
          ));
    else
      for (int j = 0; j < c.answer.length; j++)
        if (c.answerNames[j] == c.assignmentName[i] &&
            c.answerStudents[j] == c.nameS[c.storeS] && c.answerCompleted[j]==true)
          return ElevatedButton(
              onPressed: () {
                c.storeA = i;
                c.storeAns = j;
                navigateToReview(context);
              },
              child: Text(
                c.assignmentName[i] + " - Completed",
                style: TextStyle(fontFamily: "Futura"),
              ));
        else
          return ElevatedButton(
              onPressed: () {
                c.storeA = i;
                c.storeAns = j;
                navigateToAnswer(context);
              },
              child: Text(
                c.assignmentName[i] + " - Assigned",
                style: TextStyle(fontFamily: "Futura"),
              ));
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "ASSIGNMENTS",
            textAlign: TextAlign.center,
          )),
      drawer: Drawer(
          child: ListView(children: [
            Row(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.person,
                      size: 90,
                    )),
                Text("Hello!", style: TextStyle(fontSize: 30))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  navigateToProfile(context);
                },
                child: ListTile(
                  tileColor: Colors.blueGrey,
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 30, fontFamily: "Futura"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  navigateToNotice(context);
                },
                child: ListTile(
                  tileColor: Colors.blueGrey,
                  title: Text(
                    "Notice",
                    style: TextStyle(fontSize: 30, fontFamily: "Futura"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  navigateToAssignments(context);
                },
                child: ListTile(
                  tileColor: Colors.blueGrey,
                  title: Text(
                    "Assignments",
                    style: TextStyle(fontSize: 30, fontFamily: "Futura"),
                  ),
                ),
              ),
            ),
          ])),
      extendBody: true,
      body: Container(
          color: Colors.grey,
          child: ListView(
            children: [
              SizedBox(height: 20),
              for (int i = 0; i < c.assignment.length; i++)
                if (c.assignmentClass[i] == c.classS[c.storeS] &&
                    c.assignmentSection[i] == c.secS[c.storeS])
                  check(i),
            ],
          )),
    );
  }
}