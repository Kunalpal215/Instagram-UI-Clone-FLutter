
import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 239.4, 0, 102.6),
              child: Image.asset('assets/insta.png', height: 61.56)),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 34.2),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){return Login();}
                  ));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.15),
                        side: BorderSide(color: Colors.lightBlue, width: 2.0))),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 145, vertical: 18.468),),
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),

                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 143, vertical: 18.468)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.15),
                      side: BorderSide(color: Colors.lightBlue, width: 1.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.lightBlue),
              ))
        ]),
      ),
    );
  }
}
