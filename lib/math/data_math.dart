import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle =
      'در یک تقسیم خارج قسمت ۳.۶ و باقیمانده ۱.۹ می‌باشد. اگر مقسوم و مقسوم علیه را ۵ برابر کنیم حاصل جمع خارج قسمت و باقیمانده جدید کدام است ؟';
  Q1.QImageName = 'math';
  Q1.QCorrectAnswer = 1;
  Q1.QAnswerList = ['27.5', '13.1', '19.9', '5.5'];

  var Q2 = Question();
  Q2.QTitle = '1.2 را در چه عددی ضرب کنیم تا حاصل 0.156 شود ؟';
  Q2.QImageName = 'math';
  Q2.QAnswerList = ['13', '1.3', '0.13', '1'];
  Q2.QCorrectAnswer = 2;

  var Q3 = Question();
  Q3.QTitle =
      'حداقل چند واحد به صورت کسر 169/49 اضافه نماییم تا کسر حاصل ساده گردد ؟';
  Q3.QImageName = 'math';
  Q3.QAnswerList = ['4', '3', '2', '1'];
  Q3.QCorrectAnswer = 1;

  var Q4 = Question();
  Q4.QTitle = 'با توجه به الگوی داده شده شکل پنجم از چند مربع تشکیل می‌شود ؟';
  Q4.QImageName = '4';
  Q4.QAnswerList = ['5', '7', '9', '12'];
  Q4.QCorrectAnswer = 1;

  var Q5 = Question();
  Q5.QTitle =
      'رقم‌های یکان و دهگان دو عدد ۴۳۵۵ و ۲۵۲۱ را حذف می‌کنیم و به جای آنها صفر قرار می‌دهیم . کدام گزینه درباره مجموعه دو عدد به دست آمده صحیح است ؟';
  Q5.QImageName = 'math';
  Q5.QAnswerList = [
    'رقم یکان آن ۶ و رقم دهگان آن ۷ است',
    'رقم صدگان و دهگان آن صفر است',
    'مجموع ارقام عدد حاصل برابر ۱۴ می‌باشد',
    'رقم صدگان و دهگان آن صفر است'
  ];
  Q5.QCorrectAnswer = 2;

  var Q6 = Question();
  Q6.QTitle =
      'علی صادق و محمد روی هم ۷۵۰ تومان پول دارند . اگر علی ۲۳۵۰ ریال و صادق ۲۸۸۰ ریال پول داشته باشند ، محمد چند ریال پول دارد ؟';
  Q6.QImageName = 'math';
  Q6.QAnswerList = ['۵۲۳۰', '۵۱۵۰', '۵۶۲۰', '۵۶۲۰'];
  Q6.QCorrectAnswer = 3;

  var Q7 = Question();
  Q7.QTitle =
      'حسین ساعت ۱۱ قبل از ظهر به ایستگاه اتوبوس رفت او بعد از ۴ ساعت و نیم به مقصد رسید . اتوبوس در چه ساعتی به مقصد رسیده است ؟';
  Q7.QImageName = 'math';
  Q7.QAnswerList = [
    'ساعت ۲ و نیم',
    'ساعت 17 و نیم',
    'ساعت ۱۵ و نیم ',
    'ساعت ۴ و نیم'
  ];
  Q7.QCorrectAnswer = 2;

  var Q8 = Question();
  Q8.QTitle = 'مجموع اعداد فرد و طبیعی یک رقمی کدام است ؟';
  Q8.QImageName = 'math';
  Q8.QAnswerList = ['15', '25', '30', '20'];
  Q8.QCorrectAnswer = 1;

  var Q9 = Question();
  Q9.QTitle =
      'اضلاع مستطیلی که محیطش با مساحتش برابر است کدام یک از گزینه‌های زیر می‌باشد ؟';
  Q9.QImageName = 'math';
  Q9.QAnswerList = ['2 در 5', '1 در 2', '3 در 6', '3 در 4'];
  Q9.QCorrectAnswer = 2;

  var Q10 = Question();
  Q10.QTitle = 'کدام یک معرف شیب خط می‌باشد ؟';
  Q10.QImageName = 'math';
  Q10.QAnswerList = ['tan', 'cot', 'sin', 'sec'];
  Q10.QCorrectAnswer = 0;

  return [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10];
}
