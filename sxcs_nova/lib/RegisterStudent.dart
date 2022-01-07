import 'package:flutter/material.dart';
import 'package:sxcs_nova/login.dart';
import 'package:sxcs_nova/menu.dart';
import "constants.dart" as c;
class RegisterStudent extends StatefulWidget {
  const RegisterStudent({Key? key}) : super(key: key);

  @override
  _RegisterStudentState createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _class = TextEditingController();
  TextEditingController _section = TextEditingController();
  Future<void> navigateToHome(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 50),
            Text(
              "Register as Student",
              style: TextStyle(
                fontFamily: "Futura",
                fontSize: 50,
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                labelText: "Email Id Example(name@school.com)",
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
            ),
            SizedBox(height: 50),
            TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _class,
              decoration: InputDecoration(
                labelText: "Class",
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _section,
              decoration: InputDecoration(
                labelText: "Section",
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                if(_password.text!="" && _class.text!="" && _email.text!="" && _name.text!="" && _section.text!="")
                  {
                    c.emailS.add(_email.text);
                    c.secS.add(_section.text);
                    c.classS.add(_class.text);
                    c.nameS.add(_name.text);
                    c.passS.add(_password.text);
                    c.attS.add(0);
                  navigateToHome(context);
                  }
                });},
              child: Text(
                "Submit",
                style: TextStyle(
                    fontFamily: "Futura",
                    fontSize: 30
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
