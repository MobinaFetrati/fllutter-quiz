import 'package:flutter/material.dart';
import 'package:flutter_quiz/home.dart';

class ResultPageDriving extends StatelessWidget {
  ResultPageDriving({super.key, this.correctAnswer = 0, this.wrongAnwer = 0});
  int correctAnswer = 0;
  int wrongAnwer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              style:
                  ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.black)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
                ;
              },
              icon: Icon(Icons.exit_to_app))
        ],
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text(
          'نتایج',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image(
                image: AssetImage('images/quiz.png'),
                height: 200,
              ),
            ),
            Text(
              'تعداد پاسخ های صحیح : ',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textDirection: TextDirection.rtl,
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 20),
            Text(
              'تعداد پاسخ های اشتباه : ',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
              textDirection: TextDirection.rtl,
            ),
            Text(
              '$wrongAnwer',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 20),
            if (correctAnswer > wrongAnwer || correctAnswer == wrongAnwer)
              Card(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'تبریک شما قبول شدید',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            if (correctAnswer < wrongAnwer)
              Card(
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'متاسفم شما قبول نشدید',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
