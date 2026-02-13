import 'package:flutter/material.dart';
import 'package:flutter_quiz/driving/data_driving.dart';
import 'package:flutter_quiz/data/question.dart';
import 'result_driving.dart';

class QuizPageDriving1 extends StatefulWidget {
  const QuizPageDriving1({super.key});

  @override
  State<QuizPageDriving1> createState() => _QuizPageDriving1State();
}

class _QuizPageDriving1State extends State<QuizPageDriving1> {
  int ShownQ = 0;
  Question? selectedQ;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;
  int wrongAnwer = 0;
  List<bool> selectedOptions = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
    String ShownImage = getQList1()[ShownQ].QImageName!;
    selectedQ = getQList1()[ShownQ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'سوال ${ShownQ + 1} از ${getQList1().length}',
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
              Image(
                image: AssetImage('images/$ShownImage.png'),
                height: 150,
                width: 150,
              ),
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
              if (isFinalAnswerSumbited == true)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(200.0, 50.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPageDriving(
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
                      if (ShownQ < getQList1().length - 1) {
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

class QuizPageDriving2 extends StatefulWidget {
  const QuizPageDriving2({super.key});

  @override
  State<QuizPageDriving2> createState() => _QuizPageDriving2State();
}

class _QuizPageDriving2State extends State<QuizPageDriving2> {
  int ShownQ = 0;
  Question? selectedQ;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;
  int wrongAnwer = 0;
  List<bool> selectedOptions = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
    String ShownImage = getQList2()[ShownQ].QImageName!;
    selectedQ = getQList2()[ShownQ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'سوال ${ShownQ + 1} از ${getQList2().length}',
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
              Image(
                image: AssetImage('images/$ShownImage.png'),
                height: 150,
                width: 150,
              ),
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
              if (isFinalAnswerSumbited == true)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: Size(200.0, 50.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPageDriving(
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
                      if (ShownQ < getQList1().length - 1) {
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
                ),
              SizedBox(height: 20),
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
        style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 1, 16, 37)),
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

class QuizPageDriving3 extends StatefulWidget {
  const QuizPageDriving3({super.key});

  @override
  State<QuizPageDriving3> createState() => _QuizPageDriving3State();
}

class _QuizPageDriving3State extends State<QuizPageDriving3> {
  int ShownQ = 0;
  Question? selectedQ;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;
  int wrongAnwer = 0;
  List<bool> selectedOptions = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
    String ShownImage = getQList3()[ShownQ].QImageName!;
    selectedQ = getQList3()[ShownQ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'سوال ${ShownQ + 1} از ${getQList3().length}',
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
              Image(
                image: AssetImage('images/$ShownImage.png'),
                height: 150,
                width: 150,
              ),
              SizedBox(height: 30),
              Text(
                selectedQ!.QTitle!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 40),
              ...List.generate(4, (index) => getOptions(index)),
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
                          return ResultPageDriving(
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
                      if (ShownQ < getQList1().length - 1) {
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
                ),
              SizedBox(height: 20),
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
        style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 1, 16, 37)),
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
