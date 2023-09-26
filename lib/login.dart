import 'package:flutter/material.dart';
import 'package:seesaw_1/signup.dart';
import './signin.dart';
import './idsearch.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 64, 0, 0),
            child: Text(
              "돌아오셨군요~! \n다시만나 반가워요",
              style: TextStyle(fontSize: 21),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 23, 21, 20),
            child: TextField(
              decoration: InputDecoration(labelText: '아이디(이메일)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 0, 21, 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: '비밀번호'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: check(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                child: Text("아이디 저장하기"),
              )
            ],
          ),
          Center(
            child: OutlinedButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFFFF27B06E),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                "            로그인하기            ",
                style: TextStyle(
                  color: Color(0xFFF6F6F6),
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IdSearch()),
                  );
                },
                child: Text(
                  "신규 회원가입하기  | ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IdSearch()),
                  );
                },
                child: Text(
                  "아이디 찾기   | ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IdSearch()),
                  );
                },
                child: Text(
                  "비밀번호 찾기",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = true;
            });
          },
        ),
      ],
    );
  }
}
