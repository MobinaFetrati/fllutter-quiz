import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle = 'شطرنج در چه کشوری اختراع شد؟';
  Q1.QImageName = '1';
  Q1.QCorrectAnswer = 2;
  Q1.QAnswerList = ['انگلیس', 'روسیه', 'هند', 'چین'];

  var Q2 = Question();
  Q2.QTitle = 'اولین مردمانی که زغال سنگ رو کشف کردند چه کسانی بودند؟';
  Q2.QImageName = '2';
  Q2.QAnswerList = ['چینی ها', 'ژاپنی ها', 'ایرانی ها', 'ایرانی ها'];
  Q2.QCorrectAnswer = 2;

  var Q3 = Question();
  Q3.QTitle =
      'کدام شاه ایرانی مورد احترام زیاد یونانیان، یهودیان و بابلیان بود؟';
  Q3.QImageName = '3';
  Q3.QAnswerList = ['داریوش', 'کوروش', 'خسرو پرویز', 'کوروش دوم'];
  Q3.QCorrectAnswer = 1;

  var Q4 = Question();
  Q4.QTitle = 'پول کاغذی توسط کدام کشور اختراع شد؟';
  Q4.QImageName = '4';
  Q4.QAnswerList = ['چین', 'انگلیس', 'ایران', 'ژاپن'];
  Q4.QCorrectAnswer = 0;

  var Q5 = Question();
  Q5.QTitle = 'بهرام گور پادشاه کدام سلسله بود؟';
  Q5.QImageName = '5';
  Q5.QAnswerList = ['سلجوقیان', 'مادها', 'هخامنشیان', 'ساسانیان'];
  Q5.QCorrectAnswer = 3;

  var Q6 = Question();
  Q6.QTitle =
      'خانواده سلطنتی کدام کشور هزینه سفرهای کریستف کلمب را تامین می کرد؟';
  Q6.QImageName = '6';
  Q6.QAnswerList = ['ایتالیا', 'بریتانیا', 'اسپانیا', 'فرانسه'];
  Q6.QCorrectAnswer = 2;

  var Q7 = Question();
  Q7.QTitle = 'نخست وزیر بریتانیا در جنگ جهانی دوم چه کسی بود؟';
  Q7.QImageName = '7';
  Q7.QAnswerList = [
    'مارگارت تاچر',
    'وینستون چرچیل',
    'تونی بلر',
    'رابرت والپول'
  ];
  Q7.QCorrectAnswer = 1;

  var Q8 = Question();
  Q8.QTitle = 'کدام کشور اولین کشوری بود که به زنان حق رای داد؟';
  Q8.QImageName = '8';
  Q8.QAnswerList = ['آمریکا', 'ایران', 'انگلیس', 'نیوزیلند'];
  Q8.QCorrectAnswer = 3;

  var Q9 = Question();
  Q9.QTitle = 'مارکوپولو اهل کدام شهر ایتالیا بود؟';
  Q9.QImageName = '9';
  Q9.QAnswerList = ['ونیز', 'رم', 'میلان', 'ناپل'];
  Q9.QCorrectAnswer = 0;

  var Q10 = Question();
  Q10.QTitle = 'انقلاب صنعتی در کدام کشور شکل گرفت؟';
  Q10.QImageName = '10';
  Q10.QAnswerList = ['فرانسه', 'آمریکا', 'انگلیس', 'چین'];
  Q10.QCorrectAnswer = 2;

  var Q11 = Question();
  Q11.QTitle = 'کدام کشور مجسمه آزادی را به ایالات متحده هدیه داد؟';
  Q11.QImageName = '11';
  Q11.QAnswerList = ['ایتالیا', 'انگلیس', 'آلمان', 'فرانسه'];
  Q11.QCorrectAnswer = 3;

  var Q12 = Question();
  Q12.QTitle = 'قدیمی ترین دانشگاه جهان در کجا قرار دارد؟';
  Q12.QImageName = '12';
  Q12.QAnswerList = ['فرانسه', 'مراکش', 'آفریقای جنوبی', 'ایتالیا'];
  Q12.QCorrectAnswer = 1;

  var Q13 = Question();
  Q13.QTitle = 'رهبر نهضت جنگل چه کسی بود؟';
  Q13.QImageName = '13';
  Q13.QAnswerList = ['ستارخان', 'میرزا کوچک خان', 'سالارخان', 'دکتر مصدق'];
  Q13.QCorrectAnswer = 1;

  var Q14 = Question();
  Q14.QTitle = 'آقا محمدخان قاجار چند سال حکومت کرد؟';
  Q14.QImageName = '14';
  Q14.QAnswerList = ['5 سال', '3 سال', '2 سال', '8 سال'];
  Q14.QCorrectAnswer = 2;

  return [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14];
}
