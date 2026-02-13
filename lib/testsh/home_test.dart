import 'package:flutter/material.dart';
import 'package:flutter_quiz/driving/quiz_driving.dart';
import 'package:flutter_quiz/testsh/quiz_test.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: _getMainBody(context),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 5,
      shadowColor: Colors.black,
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      title: Text(
        'Quiz',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _getMainBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
          SizedBox(height: 40),
          _getSkills(context),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
            backgroundImage: AssetImage('images/test.png'), radius: 60),
        SizedBox(height: 20),
        _getText2(),
      ],
    );
  }

  Widget _getSkills(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              minimumSize: Size(500.0, 50.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return QuizPageTest();
                },
              ),
            );
          },
          child: Text(
            'شروع',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _getText2() {
    var list = [
      'این یک تست شخصیت شناسی است . لطفا به سوالات با دقت پاسخ دهید .',
      'ما در قالب 13 سوال یک سری کلیات از شخصیت شما را نمایش می دهیم .',
      'هر گزینه دارای یک امتیاز می باشد که در آخر آزمون محاسبه شده و نتیجه را نشان می دهد .',
      '*گزینه اول 1 امتیاز',
      '*گزینه دوم 2 امتیاز',
      '*گزینه سوم 3 امتیاز',
      '*گزینه چهارم 5 امتیاز',
      '*گزینه پنجم 6 امتیاز',
    ];
    return Card(
      shadowColor: Colors.purple,
      elevation: 20,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.purple[100],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.topCenter,
              height: 30,
              child: Text(
                'توجه',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red),
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: double.infinity),
                for (var resume in list)
                  Text('$resume',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
