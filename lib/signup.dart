import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28.84,
            ),
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 102.6, 0, 54.72),
                child: Image.asset('assets/insta.png', height: 60)),
            Padding(
              padding: EdgeInsets.fromLTRB(16.48, 0,
                  16.48, 5.472),
              child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(6.592),
                      )

            ),
    )),
            Padding(
              padding: EdgeInsets.fromLTRB(16.48, 0,
                  16.48, 4.788),
              child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(6.592)),
                      hintText: 'Password')),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16.48, 0,
                    16.48, 4.788),
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.grey[100],
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(6.592))))),
            Padding(
                padding: EdgeInsets.fromLTRB(16.48, 0,
                    16.48, 4.788),
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.grey[100],
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(6.592))))),
            Padding(padding: EdgeInsets.all(6.84)),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Mainpage();
                }));
              },
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                padding: EdgeInsets.fromLTRB(
                    145,
                    17.1,
                    145,
                    17.1),
              ),
            )
          ],
        ));
  }
}
