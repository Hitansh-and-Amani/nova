import 'package:flutter/material.dart';
import 'package:sxcs_nova/Teacherprofile.dart';
import 'package:sxcs_nova/TeacherNotice.dart';
import 'package:sxcs_nova/TeacherAssignments.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:sxcs_nova/TeacherAttendance.dart';
import 'constants.dart' as c;
class TeacherAttendance extends StatefulWidget {
  const TeacherAttendance({Key? key}) : super(key: key);

  @override
  _TeacherAttendanceState createState() => _TeacherAttendanceState();
}

class _TeacherAttendanceState extends State<TeacherAttendance> {
  int i=0, index=0;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "ATTENDANCE",
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
      extendBody: true,
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            ListTile(title: Text("Names",
          style: TextStyle(fontFamily: "Futura", fontSize: 30),),
            trailing: Text("Attendance",
              style: TextStyle(fontFamily: "Futura", fontSize: 30),),),
            for(int i=0; i<c.nameS.length; i++)
              if(c.classS[i]==c.classT[c.storeT] && c.secS[i]==c.secT[c.storeT])
                ListTile(
                    title: Text(c.nameS[i],
                      style: TextStyle(fontFamily: "Futura", fontSize: 25),),
                trailing: Text(c.attS[i].toString(),
                  style: TextStyle(fontFamily: "Futura", fontSize: 30),),)
          ]
        )
      ),
    );
  }
}
