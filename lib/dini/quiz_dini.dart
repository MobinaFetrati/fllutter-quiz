import 'package:flutter/material.dart';
import 'data_dini.dart';
import 'package:flutter_quiz/data/question.dart';
import 'result_dini.dart';

class QuizPageDini extends StatefulWidget {
  const QuizPageDini({super.key});

  @override
  State<QuizPageDini> createState() => _QuizPageDiniState();
}

class _QuizPageDiniState extends State<QuizPageDini> {
  int ShownQ = 0;
  Question? selectedQ;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;
  int wrongAnwer = 0;
  List<bool> selectedOptions = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 20),
              CircleAvatar(
                  backgroundImage: AssetImage('images/dini.png'), radius: 50),
              SizedBox(height: 30),
              Text(
                selectedQ!.QTitle!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 40),
              ...List.generate(4, (index) => getOptions(index)),
              SizedBox(height: 30),
              if (isFinalAnswerSumbited)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(200.0, 50.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPageDini(
                            correctAnswer: correctAnswer,
                            wrongAnwer: wrongAnwer,
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
              else
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(200.0, 50.0)),
                  onPressed: () {
                    setState(() {
                      if (ShownQ < getQList().length - 1) {
                        ShownQ++;
                        selectedOptions =
                            List.generate(4, (_) => false); // reset options
                      } else {
                        isFinalAnswerSumbited = true;
                      }
                    });
                  },
                  child: Text(
                    'برو بعدی',
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
      leading: Icon(selectedOptions[index]
          ? Icons.check_box
          : Icons.check_box_outline_blank),
      iconColor: const Color.fromARGB(255, 1, 16, 37),
      title: Text(
        selectedQ!.QAnswerList![index],
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontSize: 15, color: const Color.fromARGB(255, 1, 16, 37)),
      ),
      onTap: () {
        setState(() {
          for (int i = 0; i < selectedOptions.length; i++) {
            selectedOptions[i] = false;
          }
          selectedOptions[index] = true;

          if (selectedQ!.QCorrectAnswer == index) {
            correctAnswer++;
          } else {
            wrongAnwer++;
          }
        });
      },
    );
  }
}
