import 'package:flutter/material.dart';
import 'package:sxcs_nova/Teacherprofile.dart';
import 'package:sxcs_nova/TeacherNotice.dart';
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'package:sxcs_nova/TeacherAttendance.dart';
import "constants.dart" as c;
class TeacherNotice extends StatefulWidget {
  const TeacherNotice({Key? key}) : super(key: key);
  @override
  _TeacherNoticeState createState() => _TeacherNoticeState();
}

class _TeacherNoticeState extends State<TeacherNotice> {
  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
  }
  Future<void> navigateToAttendance(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherAttendance()));
  }
  Future<void> navigateToNotice(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherNotice()));
  }
  Future<void> navigateToAssignments(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherAssignments()));
  }
  TextEditingController _notice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "NOTICE",
            textAlign: TextAlign.center,
          )
      ),
      drawer: Drawer(
          child: ListView(
              children: [
                Row(
                  children: [
                    Align(alignment: Alignment.topLeft,
                        child: Icon(Icons.person, size: 90,)),
                    Text("Hello!", style: TextStyle(fontSize: 30))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {navigateToProfile(context);},
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
                    onPressed: () {navigateToNotice(context);},
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
                    onPressed: () {navigateToAssignments(context);},
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
                    onPressed: () {navigateToAttendance(context);},
                    child: ListTile(
                      tileColor: Colors.blueGrey,
                      title: Text(
                        "Attendance",
                        style: TextStyle(fontSize: 30, fontFamily: "Futura"),
                      ),
                    ),
                  ),
                ),
              ]
          )
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            Container(
                width: 1*MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextField(
                      controller: _notice,
                      decoration: InputDecoration(
                        labelText: "Enter Notice here!",
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        c.notice.add(_notice.text);
                        navigateToNotice(context);
                      },
                      child: Text("Publish", style: TextStyle(fontSize: 20),),
                    ),
                  ],
                )
            ),
            SizedBox(height: 50),
            Center(child: Text("NOTICE", style: TextStyle(fontSize: 30, fontFamily: "Futura"),)),
            for(int i=c.notice.length-1; i>=0; i--)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(title: Text(c.notice[i]), tileColor: Colors.white),
              )
          ],
        )
      ),
    );
  }
}
