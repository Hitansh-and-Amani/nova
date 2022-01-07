import 'package:flutter/material.dart';
import 'package:sxcs_nova/LoginTeacher.dart';
import 'package:sxcs_nova/RegisterTeacher.dart';
import 'package:sxcs_nova/TeacherNotice.dart';
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'package:sxcs_nova/TeacherAttendance.dart';
import 'package:sxcs_nova/menu.dart';
import 'constants.dart' as c;

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  Future<void> navigateToProfile(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherProfile()));
  }

  Future<void> navigateToAttendance(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAttendance()));
  }

  Future<void> navigateToNotice(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherNotice()));
  }

  Future<void> navigateToAssignments(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAssignments()));
  }

  Future<void> navigateToMenu(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainMenu()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "TEACHER PROFILE",
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
      body: Container(
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                Icons.account_box,
                size: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Name: " + c.nameT[c.storeT],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Class: " + c.classT[c.storeT],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Section: " + c.secT[c.storeT],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Email: " + c.emailT[c.storeT],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Attendance: " + c.attT[c.storeT].toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        navigateToMenu(context);
                      },
                      child: Text("Log Out"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, top: 50.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Edit Account"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
