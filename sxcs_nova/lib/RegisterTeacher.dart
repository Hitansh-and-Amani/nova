import 'package:flutter/material.dart';
import 'package:sxcs_nova/login.dart';
import 'package:sxcs_nova/menu.dart';
import "constants.dart" as c;
class RegisterTeacher extends StatefulWidget {
  const RegisterTeacher({Key? key}) : super(key: key);

  @override
  _RegisterTeacherState createState() => _RegisterTeacherState();
}

class _RegisterTeacherState extends State<RegisterTeacher> {
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
                "Register as Teacher",
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
                onSubmitted: (value) {},
                ),
              SizedBox(height: 50),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                onSubmitted: (value) {},
                obscureText: true,
              ),
              SizedBox(height: 50),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                onSubmitted: (value) {},
              ),
              SizedBox(height: 50),
              TextField(
                controller: _class,
                decoration: InputDecoration(
                  labelText: "Class",
                ),
                onSubmitted: (value) {},
              ),
              SizedBox(height: 50),
              TextField(
                controller: _section,
                decoration: InputDecoration(
                  labelText: "Section",
                ),
                onSubmitted: (value) {},
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_password.text!="" && _class.text!="" && _email.text!="" && _name.text!="" && _section.text!="")
                    {
                      c.emailT.add(_email.text);
                      c.secT.add(_section.text);
                      c.classT.add(_class.text);
                      c.nameT.add(_name.text);
                      c.passT.add(_password.text);
                      c.attT.add(0);
                      navigateToHome(context);
                    }
                  });
                  },
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
