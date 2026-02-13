import 'package:flutter/material.dart';
import 'package:flutter_quiz/driving/home_driving.dart';
import 'package:flutter_quiz/football/quiz_football.dart';
import 'package:flutter_quiz/math/quiz_math.dart';
import 'package:flutter_quiz/olom/quiz_olom.dart';
import 'package:flutter_quiz/omomi/quiz_omomi.dart';
import 'package:flutter_quiz/tarikh/quiz_tarikh.dart';
import 'package:flutter_quiz/testsh/home_test.dart';
import 'package:flutter_quiz/testsh/quiz_test.dart';
import 'dini/quiz_dini.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Colors.grey[300],
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
          SizedBox(height: 15),
          _getSkills(context),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        SizedBox(height: 5),
        _getText(),
        SizedBox(height: 5),
      ],
    );
  }

  Widget _getText() {
    return Column(
      children: [
        Text(
          'به اپلیکیشن آزمون من خوش آمدید.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        Text(
          ' برای شروع روی یکی از آزمون های زیر کلیک کنید.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _getSkills(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 40,
      alignment: WrapAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40),
              backgroundColor: Colors.redAccent[100]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return HomeDriving();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/driving.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('راهنمایی و رانندگی'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), backgroundColor: Colors.purple[100]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return HomeTest();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/test.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('تست شخصیت'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40),
              backgroundColor: Colors.lightGreen[200]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageDini();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/dini.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('دینی'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), backgroundColor: Colors.orange[200]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageMath();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/math.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('ریاضی'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), backgroundColor: Colors.brown[200]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageTarikh();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/tarikh.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('تاریخ'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), backgroundColor: Colors.grey),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageOmomi();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/omomi.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('اطلاعات عمومی'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40),
              backgroundColor: Colors.lightBlue[100]),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageOlom();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/olom.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('علوم'),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), backgroundColor: Colors.green),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return QuizPageFootball();
                },
              ),
            );
          },
          child: Card(
            elevation: 5,
            shadowColor: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage('images/football.png'),
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('فوتبال'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
