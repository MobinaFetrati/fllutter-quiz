import 'package:flutter/material.dart';
import 'package:flutter_quiz/driving/quiz_driving.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDriving extends StatelessWidget {
  const HomeDriving({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: const Color.fromARGB(255, 247, 160, 152),
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
            backgroundImage: AssetImage('images/driving.png'), radius: 60),
        SizedBox(height: 50),
        _getText(),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _getText() {
    return Column(
      children: [
        Text(
          '.لطفا یکی از آزمون های زیر را انتخاب کنید',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
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
                  return QuizPageDriving1();
                },
              ),
            );
          },
          child: Text(
            'آزمون اول',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              minimumSize: Size(500.0, 50.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return QuizPageDriving2();
                },
              ),
            );
          },
          child: Text(
            'آزمون دوم',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              minimumSize: Size(500.0, 50.0)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return QuizPageDriving3();
                },
              ),
            );
          },
          child: Text(
            'آزمون سوم',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
