import 'package:flutter/material.dart';
import 'package:seesaw_1/main.dart';
import './signin.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Onboarding._title,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
    Color backgroundColor = const Color(0xFF87B49E),
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;

  final _imageAssets = const [
    'assets/images/Onbo1.png',
    'assets/images/Onbo2.png',
    'assets/images/Onbo3.png',
  ];
  late final PageController controller;
  Widget _pageIndicator() {
    final List<Widget> list = [];

    Color indicatorColor;

    for (int i = 0; i < _imageAssets.length; i++) {
      if (i == _currentPageIndex) {
        indicatorColor = const Color(0xFFFAF3DD);
      } else {
        indicatorColor = const Color(0xFFD8D8D8);
      }
      list.add(
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            width: 10,
            height: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: indicatorColor),
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: list,
    );
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color(0xff0A0028);
    return Scaffold(
      backgroundColor: const Color(0xff27B06E),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.bottom),
          _pageIndicator(),
          Flexible(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _currentPageIndex = value;
                });
              },
              controller: controller,
              itemCount: _imageAssets.length,
              itemBuilder: (context, index) {
                if (index == 2) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
                          ));
                    },
                    child: SizedBox(
                        width: 500, child: Image.asset(_imageAssets[index])),
                  );
                  // OutlinedButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const Signin()),
                  //       );
                  //     },
                  //     child: Text(
                  //       "시작하기",
                  //     ));
                }
                return SizedBox(
                    width: 500, child: Image.asset(_imageAssets[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
