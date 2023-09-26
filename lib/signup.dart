import 'package:flutter/material.dart';
import 'package:seesaw_1/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
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
              "시장소리의 서비스 이용약관에\n동의해주세요",
              style: TextStyle(fontSize: 21),
            ),
          ),
          // Text(
          //   isChecked ? '체크박스가 선택되었습니다.' : '체크박스가 선택되지 않았습니다.',
          //   style: TextStyle(fontSize: 18),
          // ),
          SizedBox(height: 20),
          SizedBox(
              child: Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
              Text("모두 동의(선택 정보 포함)")
            ],
          )),

          Divider(
            thickness: 3,
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  icon: isChecked
                      ? Icon(
                          Icons.check,
                          color: Colors.green, // 체크된 상태에서는 초록색 아이콘
                        )
                      : Icon(
                          Icons.check,
                          color: Colors.black, // 체크되지 않은 상태에서는 검정색 아이콘
                        ),
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked; // 버튼을 누를 때마다 isChecked 값을 토글
                    });
                  },
                ),
                Text("[필수] 만 14세 이상")
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  icon: isChecked
                      ? Icon(
                          Icons.check,
                          color: Colors.green, // 체크된 상태에서는 초록색 아이콘
                        )
                      : Icon(
                          Icons.check,
                          color: Colors.black, // 체크되지 않은 상태에서는 검정색 아이콘
                        ),
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked; // 버튼을 누를 때마다 isChecked 값을 토글
                    });
                  },
                ),
                Text("[필수] 이용약관 동의")
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  icon: isChecked
                      ? Icon(
                          Icons.check,
                          color: Colors.green, // 체크된 상태에서는 초록색 아이콘
                        )
                      : Icon(
                          Icons.check,
                          color: Colors.black, // 체크되지 않은 상태에서는 검정색 아이콘
                        ),
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked; // 버튼을 누를 때마다 isChecked 값을 토글
                    });
                  },
                ),
                Text("[필수] 개인정보 처리 방침 동의")
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  icon: isChecked
                      ? Icon(
                          Icons.check,
                          color: Colors.green, // 체크된 상태에서는 초록색 아이콘
                        )
                      : Icon(
                          Icons.check,
                          color: Colors.black, // 체크되지 않은 상태에서는 검정색 아이콘
                        ),
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked; // 버튼을 누를 때마다 isChecked 값을 토글
                    });
                  },
                ),
                Text("[선택] 광고성 정보 수신 및 마케팅 활용 동의")
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFF27B06E),
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
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
