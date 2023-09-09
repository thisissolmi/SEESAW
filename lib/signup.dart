import 'package:flutter/material.dart';
import 'package:seesaw_1/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(23, 64, 0, 0),
          child: Text(
            "시장소리의 서비스 이용약관에\n동의해주세요",
            style: TextStyle(fontSize: 21),
          ),
        ),
      ]),
    );
  }
}
