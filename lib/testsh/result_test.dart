import 'package:flutter/material.dart';
import 'package:flutter_quiz/home.dart';

class ResultPageTest extends StatelessWidget {
  ResultPageTest({super.key, this.score = 0});
  int score = 0;
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
                height: 150,
              ),
            ),
            Text(
              'امتیاز شما : ',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textDirection: TextDirection.rtl,
            ),
            Text(
              '$score',
              style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 20),
            if (score >= 1 && score <= 21)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'شما سوسن سفید هستید و فردی می باشید که در کار خود موفق هستید و هدف های مشخصی دارید چرا که پشتکارتان ستودنی است و تا در انجام کاری به موفقیت دست نیابید از تلاش دست بر نخواهید داشت . احتمالا فرزند اول خانواده هستید . دوست ندارید احساسات خود را بروز دهید و بیشتر اوقات افکار بدبینانه دارید . در نظر دیگران شما فردی با اعتماد به نفس هستید اما در باطن اعتماد به نفس اندکی دارید . چگونه ظاهر شدن در برابر افراد مختلف از دغدغه های شما می باشد . ',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
              ),
            if (score >= 22 && score <= 54)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'شما یک گل رز بسیار زیبا با اندکی تیغ هستید . احتمالا فرزند وسط خانواده می باشید و فردی خونگرم ، اجتماعی ، شوخ طبع و بذله گو سخت کوش و با اعتماد به نفس فوق العاده می باشید که دیـد واقـع بـیـنـانـه از زندگی دارید و می دانید که زندگی همانطور که گاهی تلخ است گاهی نیز شیرین می باشد . مردم دوست دارند با شما ارتباط برقرار کنند بنابراین دوستان صمیمی بسیاری دارید. تنها مشکلی که با زندگی دارید روند عادی و یکنواخت زندگیتان است که شما را آزار داده و روحیه تان را کسل می کند .',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
              ),
            if (score >= 55 && score <= 75)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'شما یک گل آفتابگردان در بستری از گل های رز هستید . یکی از خصوصیات اصلی شما دیگران را به سمت خود جذب می کند و سبب می شود شما نزد دیگران محبوب باشید . مــمــکـــن اســـت شــمــا فرزند کوچک خانواده یا تک فرزند باشید . شما در صورت لزوم جدی هستید و در جمع دوستانه فردی شوخ و بذله گو می باشید که از جوک گفتن لذت می برید و شیطنت هایی نیز دارید . دوست دارید در زندگی خود با افراد جدید و جالبی آشنا گردید . شما فردی گرم ، دوست داشتنی ، باوفا و اجتماعی هستید و احساس راحتی با افرادی که نمی خندند ، ندارید . دید شما نسبت به زندگی مثبت است . همواره به دنبال خوبی ها می گردید . شما با هر بیدی نـمی لرزید . انگیزه کمی دارید اما انرژیتان فوق العاده است .',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
              ),
          ],
        ),
      )),
    );
  }
}
