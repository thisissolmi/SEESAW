import 'package:flutter/material.dart';
import 'package:seesaw_1/signin.dart';

class IdSearch extends StatefulWidget {
  const IdSearch({super.key});

  @override
  State<IdSearch> createState() => _IdSearchState();
}

class _IdSearchState extends State<IdSearch> {
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
              "본인 확인을 위해\n인증을 진행해주세요",
              style: TextStyle(fontSize: 21),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 0, 0, 0),
            child: Text(
              "",
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
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 0, 21, 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: '휴대폰 번호'),
            ),
          ),
          Center(
            child: OutlinedButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFFFF27B06E),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IDFind()),
                );
              },
              child: Text(
                "           다음           ",
                style: TextStyle(
                  color: Color(0xFFF6F6F6),
                  fontSize: 17,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IDFind extends StatefulWidget {
  const IDFind({super.key});

  @override
  State<IDFind> createState() => _IDFindState();
}

class _IDFindState extends State<IDFind> {
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
              MaterialPageRoute(builder: (context) => IdSearch()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Color(0xFFF6F6F6),
      ),
      body: Column(
        children: [
          Image(
              image: AssetImage(
            'assets/images/Lock.png',
          )),
        ],
      ),
    );
  }
}
