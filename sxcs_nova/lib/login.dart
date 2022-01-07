import 'package:flutter/material.dart';
import 'package:sxcs_nova/LoginStudent.dart';
import 'package:sxcs_nova/LoginTeacher.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> navigateToTeacher(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginTeacher()));
  }Future<void> navigateToStudent(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginStudent()));
  }

  Widget page1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Login as:",
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