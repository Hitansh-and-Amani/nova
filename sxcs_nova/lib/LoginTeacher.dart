import 'package:flutter/material.dart';
import 'package:sxcs_nova/RegisterStudent.dart';
import 'package:sxcs_nova/RegisterTeacher.dart';
import 'package:sxcs_nova/TeacherProfile.dart';
import 'constants.dart' as c;
class LoginTeacher extends StatefulWidget {
  const LoginTeacher({Key? key}) : super(key: key);

  @override
  _LoginTeacherState createState() => _LoginTeacherState();
}

class _LoginTeacherState extends State<LoginTeacher> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  Future<void> navigateToTeacher(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherProfile()));
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
                if(c.emailT.indexOf(_email.text)>=0 && 0<=c.passT.indexOf(_password.text)
                    && c.emailT.indexOf(_email.text)==c.passT.indexOf(_password.text))
                {
                  c.storeT = c.passT.indexOf(_password.text);
                  c.attT[c.storeT]+=1;
                  navigateToTeacher(context);}
            },
            child: Text("Login", style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}