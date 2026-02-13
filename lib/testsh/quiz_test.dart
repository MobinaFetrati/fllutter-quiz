import 'package:flutter/material.dart';
import 'data_test.dart';
import 'package:flutter_quiz/data/question.dart';
import 'result_test.dart';

class QuizPageTest extends StatefulWidget {
  const QuizPageTest({super.key});

  @override
  State<QuizPageTest> createState() => _QuizPageTestState();
}

class _QuizPageTestState extends State<QuizPageTest> {
  int ShownQ = 0;
  Question? selectedQ;
  bool isFinalAnswerSumbited = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    //
    //String ShownImage = getQList()[ShownQ].QImageName!;
    selectedQ = getQList()[ShownQ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'سوال ${ShownQ + 1} از ${getQList().length}',
          style: TextStyle(
            color: Colors.pink[50],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              SizedBox(height: 20),
              CircleAvatar(
                  backgroundImage: AssetImage('images/test.png'), radius: 50),
              SizedBox(height: 30),
              Text(
                selectedQ!.QTitle!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 40),
              ...List.generate(5, (index) => getOptions(index)),
              SizedBox(height: 20),
              if (isFinalAnswerSumbited == true)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(200.0, 50.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPageTest(
                            score: score,
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    'مشاهده نتایج ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget getOptions(int index) {
    return ListTile(
      leading: Icon(Icons.check_box_outline_blank),
      iconColor: const Color.fromARGB(255, 1, 16, 37),
      title: Text(
        selectedQ!.QAnswerList![index],
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontSize: 15, color: const Color.fromARGB(255, 1, 16, 37)),
      ),
      onTap: () {
        if (index == 0) {
          score++;
        } else if (1 == index) {
          score += 2;
        } else if (2 == index) {
          score += 3;
        } else if (3 == index) {
          score += 4;
        } else if (4 == index) {
          score += 5;
        }

        if (ShownQ == getQList().length - 1) {
          isFinalAnswerSumbited = true;
        }

        setState(() {
          if (ShownQ < getQList().length - 1) {
            ShownQ++;
          }
        });
      },
    );
  }
}
