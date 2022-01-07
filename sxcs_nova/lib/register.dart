import 'package:flutter/material.dart';
import 'package:sxcs_nova/RegisterStudent.dart';
import 'package:sxcs_nova/RegisterTeacher.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Future<void> navigateToTeacher(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterTeacher()));
  }Future<void> navigateToStudent(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterStudent()));
  }

  Widget page1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Register as:",
            style: TextStyle(
              fontFamily: "Futura",
              fontSize: 60,
            ),
          ),
        ),
        SizedBox(height: 100),
        ElevatedButton(
            onPressed: () {
              navigateToTeacher(context);
            },
            child: Text("Teacher", style: TextStyle(fontSize: 30),)),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            navigateToStudent(context);
          },
          child: Text("Student", style: TextStyle(fontSize: 30),)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,body: page1());
  }
}