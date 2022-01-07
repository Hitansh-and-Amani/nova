import 'package:flutter/material.dart';
import 'package:sxcs_nova/register.dart';
import 'package:sxcs_nova/login.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Future<void> navigateToRegister(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
  }
  Future<void> navigateToLogin(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Center(
          child: Text(
              "Home Page",
              style: TextStyle(
                fontFamily: "Futura",
                fontSize:70,
              )),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {navigateToRegister(context);},
            child: Text("Register",
                style: TextStyle(
                  fontFamily: "Futura",
                  fontSize: 50
                )),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {navigateToLogin(context);},
            child: Text("Login",
                style: TextStyle(
                  fontFamily: "Futura",
                    fontSize: 50
                )),
          ),
        ),
      ]),
    );
  }
}