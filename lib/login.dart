import 'package:flutter/material.dart';
import './signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Signin()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Color(0xFFF6F6F6),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 62, 0, 0),
            child: Text(
              "돌아오셨군요! \n다시만나 반가워요",
              style: TextStyle(fontSize: 21),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 23, 21, 20),
            child: TextField(
              decoration: InputDecoration(labelText: '아이디(이메일'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 0, 21, 20),
            child: TextField(
              decoration: InputDecoration(labelText: '비밀번호'),
            ),
          ),
        ],
      ),
    );
  }
}
