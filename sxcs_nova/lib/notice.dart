import 'package:flutter/material.dart';
import 'package:sxcs_nova/TeacherNotice.dart';
import 'package:sxcs_nova/profile.dart';
import 'package:sxcs_nova/notice.dart';
import 'package:sxcs_nova/assignments.dart';
import "constants.dart" as c;
class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }
  Future<void> navigateToNotice(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));
  }
  Future<void> navigateToAssignments(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Assignments()));
  }
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
              ]
          )
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            Center(child: Text("NOTICE", style: TextStyle(fontSize: 30, fontFamily: "Futura"),)),
            for(int i=c.notice.length-1; i>=0; i--)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(title: Text(c.notice[i]), tileColor: Colors.white),
              )
          ]
        ),
      ),
    );
  }
}
