import 'package:flutter/material.dart';
import 'package:sxcs_nova/profile.dart';
import 'package:sxcs_nova/notice.dart';
import 'package:sxcs_nova/assignments.dart';
import 'package:sxcs_nova/menu.dart';
import 'package:sxcs_nova/RegisterStudent.dart';
import 'package:sxcs_nova/LoginStudent.dart';
import "constants.dart" as c;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  Future<void> navigateToNotice(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));
  }

  Future<void> navigateToAssignments(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Assignments()));
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
        "STUDENT PROFILE",
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
                "Name: " + c.nameS[c.storeS],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Class: " + c.classS[c.storeS],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Section: " + c.secS[c.storeS],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Email: " + c.emailS[c.storeS],
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Attendance: " + c.attS[c.storeS].toString(),
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
