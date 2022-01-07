import 'package:flutter/material.dart';
import 'package:sxcs_nova/Teacherprofile.dart';
import 'package:sxcs_nova/TeacherNotice.dart';
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:sxcs_nova/TeacherAttendance.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/GradeAssignments.dart';
import 'package:sxcs_nova/createAssignment.dart';

class TeacherAssignments extends StatefulWidget {
  const TeacherAssignments({Key? key}) : super(key: key);

  @override
  _TeacherAssignmentsState createState() => _TeacherAssignmentsState();
}

class _TeacherAssignmentsState extends State<TeacherAssignments> {
  int i = 0, index = 0;

  Future<void> navigateToProfile(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherProfile()));
  }

  Future<void> navigateToNotice(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherNotice()));
  }

  Future<void> navigateToAttendance(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAttendance()));
  }

  Future<void> navigateToCreate(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CreateAssignment()));
  }

  Future<void> navigateToAnswerList(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GradeAssignments()));
  }

  Future<void> navigateToAssignments(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAssignments()));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  navigateToAttendance(context);
                },
                child: ListTile(
                  tileColor: Colors.blueGrey,
                  title: Text(
                    "Attendance",
                    style: TextStyle(fontSize: 30, fontFamily: "Futura"),
                  ),
                ),
              ),
            ),
          ])),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: FloatingActionButton(
          onPressed: () {
            navigateToCreate(context);
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
      extendBody: true,
      body: Container(
          color: Colors.grey,
          child: ListView(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Review Assignments",
                  style: TextStyle(
                    fontFamily: "Futura",
                    fontSize: 30,
                  )),
            ]),
            for (i = 0; i < c.assignment.length; i++)
              if (c.assignmentClass[i] == c.classT[c.storeT] &&
                  c.assignmentSection[i] == c.secT[c.storeT])
                ElevatedButton(
                  onPressed: () {
                    c.storeA = i-1;
                    navigateToAnswerList(context);
                  },
                  child: Text(c.assignmentName[i]),
                ),
          ])),
    );
  }
}