import 'package:flutter/material.dart';
import 'constants.dart' as c;
import 'package:sxcs_nova/TeacherAssignments.dart';

class CreateAssignment extends StatefulWidget {
  const CreateAssignment({Key? key}) : super(key: key);

  @override
  _CreateAssignmentState createState() => _CreateAssignmentState();
}

class _CreateAssignmentState extends State<CreateAssignment> {
  TextEditingController _aName = TextEditingController();
  TextEditingController _assignment = TextEditingController();

  Future<void> navigateToAssignments(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeacherAssignments()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CREATE ASSIGNMENTS",
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(children: [
            SizedBox(height: 30),
            TextField(
              controller: _aName,
              decoration: InputDecoration(
                labelText: "Name of the Assignment",
              ),
            ),
            SizedBox(height: 30),
            TextField(
                controller: _assignment,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Enter the Questions",
                )),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (_aName.text != "" && _assignment.text != "") {
                  c.assignment.add(_assignment.text);
                  c.assignmentName.add(_aName.text);
                  c.assignmentClass.add(c.classT[c.storeT]);
                  c.assignmentSection.add(c.secT[c.storeT]);
                  navigateToAssignments(context);
                }
              },
              child: Text("Upload Assignment",
                  style: TextStyle(
                    fontFamily: "Futura",
                    fontSize: 30,
                  )),
            ),
          ]),
        ));
  }
}