import 'package:flutter/material.dart';
import 'package:seesaw_1/signup.dart';
import './login.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27B06E),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: Image.asset('assets/images/Signinlogo.png'),
          ),
          SizedBox(
            height: 50,
          ),

          // 신규 회원가입 버튼
          OutlinedButton(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xFFFF6F6F6),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup()),
              );
            },
            child: Text(
              "               신규 회원가입             ",
              style: TextStyle(
                color: Color(0xFF27B06E),
              ),
            ),
          ),

          // 기존 유저 로그인 버튼
          OutlinedButton(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xFFFF6F6F6),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text(
              "             기존 유저 로그인            ",
              style: TextStyle(color: Color(0xFF27B06E)),
            ),
          )
        ],
      ),
    );
  }
}
