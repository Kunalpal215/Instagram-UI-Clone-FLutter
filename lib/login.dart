import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'signup.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){return Home();}));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 28.84,
            ),
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 102.6, 0, 39.672),
                  child: Image.asset(
                    'assets/insta.png',
                    height: 60,
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(19.982, 0,
                    19.982, 9.9864),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: Colors.grey[100],
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(19.982, 0,
                    19.982, 6.84),
                child: TextField(
                  decoration: InputDecoration(
                    filled:true,
                      fillColor: Colors.grey[100],
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Row(
                children:[
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(280.16, 0, 0, 20.52)
                  // ),
                  Container(
                    margin: EdgeInsets.fromLTRB(200, 0, 4, 15),
                    child: TextButton(
                        onPressed: () {},
                        // style: TextButton.styleFrom(
                        //     padding: EdgeInsets.fromLTRB(
                        //         0, 0, 0, 20.52)),
                        child: Text('Forgot password ?')),
                  ),
                ]
              ),
              Container(
                // margin: EdgeInsets.fromLTRB(12, 0, 12,30),
                // padding: EdgeInsets.fromLTRB(0, 3, 0,3),
                color: Colors.lightBlue,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Mainpage();
                      }));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.fromLTRB(
                            140,
                            16,
                            140,
                            16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.15)),
                    ),
                  child: Text('Log in',style: TextStyle(color: Colors.white),),
                ),),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
                child: Center(child: Text('OR')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUp();
                        }));
                      },
                      child: Text('Sign up',
                          style: TextStyle(color: Colors.lightBlue)))
                ],
              ),
                ],
          ),
        ));
  }
}
