import 'package:flutter/material.dart';
import 'package:sxcs_nova/Profile.dart';
import 'package:sxcs_nova/RegisterStudent.dart';
import 'constants.dart' as c;
class LoginStudent extends StatefulWidget {
  const LoginStudent({Key? key}) : super(key: key);

  @override
  _LoginStudentState createState() => _LoginStudentState();
}

class _LoginStudentState extends State<LoginStudent> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  Future<void> navigateToStudent(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }
  int c1=-1, c2=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(height: 50),
          Text("LOGIN", style: TextStyle(fontSize: 30, fontFamily: "Futura"),),
          SizedBox(height: 50),
          TextField(
            controller: _email,
            decoration: InputDecoration(
              labelText: "Email Id Example(name@school.com)",
            ),
          ),
          SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
          TextField(
            controller: _password,
            decoration: InputDecoration(
              labelText: "Password",
            ),
            obscureText: true,
          ),
          SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
          ElevatedButton(
            onPressed: () {
              if(c.emailS.indexOf(_email.text)>=0 && 0<=c.passS.indexOf(_password.text)
                  && c.emailS.indexOf(_email.text)==c.passS.indexOf(_password.text))
              {
                c.storeS = c.passS.indexOf(_password.text);
                c.attS[c.storeS]++;
                navigateToStudent(context);}
            },
            child: Text("Login", style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}