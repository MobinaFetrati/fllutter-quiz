import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle = 'تعداد حلقه های المپیک؟';
  Q1.QImageName = '1';
  Q1.QCorrectAnswer = 0;
  Q1.QAnswerList = ['5 عدد', '6 عدد', '7 عدد', '8 عدد'];

  var Q2 = Question();
  Q2.QTitle = 'تعداد اعضای شورای نگهبان؟';
  Q2.QImageName = '2';
  Q2.QAnswerList = ['6 نفر', '8 نفر', '13 نفر', '12 نفر'];
  Q2.QCorrectAnswer = 3;

  var Q3 = Question();
  Q3.QTitle = 'ارتفاعات سهند در کدام استان قرار دارد؟';
  Q3.QImageName = '3';
  Q3.QAnswerList = ['آذربایجان شرقی', 'آذربایجان غربی', 'کردستان', 'زنجان'];
  Q3.QCorrectAnswer = 0;

  var Q4 = Question();
  Q4.QTitle = 'خرمشهر در کدام عملیات آزاد شد؟';
  Q4.QImageName = '4';
  Q4.QAnswerList = ['بیت المقدس', 'ثامن الاعمع', 'فتح المبین', 'خیبر'];
  Q4.QCorrectAnswer = 0;

  var Q5 = Question();
  Q5.QTitle =
      'کدام کارگردان رکورد دار دریافت سیمرغ بهترین فیلم و کارگردانی در جشنواره فیلم فجر است؟';
  Q5.QImageName = '5';
  Q5.QAnswerList = [
    'مجید مجیدی',
    'ابراهیم حاتمی کیا',
    'اصغر فرهادی',
    'داریوش مهرجویی'
  ];
  Q5.QCorrectAnswer = 1;

  var Q6 = Question();
  Q6.QTitle = 'تابلوی لبخند ژکوند اثر کیست؟';
  Q6.QImageName = '6';
  Q6.QAnswerList = ['ونگوک', 'پیکاسو', 'داوینچی', 'رامبراند'];
  Q6.QCorrectAnswer = 2;

  var Q7 = Question();
  Q7.QTitle = 'کدام درخت نماد صلح است؟';
  Q7.QImageName = '7';
  Q7.QAnswerList = ['زیتون', 'سرو', 'کاج', 'نارنج'];
  Q7.QCorrectAnswer = 0;

  var Q8 = Question();
  Q8.QTitle = 'جنگ صد ساله چند سال طول کشید؟';
  Q8.QImageName = '8';
  Q8.QAnswerList = ['97 سال', '100 سال', '116 سال', '121 سال'];
  Q8.QCorrectAnswer = 2;

  var Q9 = Question();
  Q9.QTitle = 'آقای گل ملی جهان کیست؟';
  Q9.QImageName = '9';
  Q9.QAnswerList = ['کریس رونالدو', 'مارادونا', 'لیونل مسی', 'علی دایی'];
  Q9.QCorrectAnswer = 3;

  var Q10 = Question();
  Q10.QTitle = 'جزایر لانگرهانس در کجا قرار دارد؟';
  Q10.QImageName = '10';
  Q10.QAnswerList = ['اقیانوسیه', 'لوز المعده', 'اسپانیا', 'جمجمه'];
  Q10.QCorrectAnswer = 1;

  var Q11 = Question();
  Q11.QTitle = 'چند درصد بدن انسان را آب تشکیل میدهد؟';
  Q11.QImageName = '11';
  Q11.QAnswerList = ['30%', '45%', '50%', '70%'];
  Q11.QCorrectAnswer = 3;

  var Q12 = Question();
  Q12.QTitle = 'کدام حشره بیشترین طول عمر را دارد؟';
  Q12.QImageName = '12';
  Q12.QAnswerList = ['موریانه', 'ملخ', 'مورچه', 'عنکبوت'];
  Q12.QCorrectAnswer = 0;

  var Q13 = Question();
  Q13.QTitle = 'کدام حیوان در هنگام خواب یک چشم خود را باز نگه میدارد؟';
  Q13.QImageName = '13';
  Q13.QAnswerList = ['شغال', 'جغد', 'روباه', 'گرگ'];
  Q13.QCorrectAnswer = 3;

  var Q14 = Question();
  Q14.QTitle = 'کوچک ترین سوره قرآن چه نام دارد؟';
  Q14.QImageName = '14';
  Q14.QAnswerList = ['توحید', 'بقره', 'کوثر', 'ناس'];
  Q14.QCorrectAnswer = 2;

  var Q15 = Question();
  Q15.QTitle = 'کوچک ترین واحد ساختمانی بدن انسان کدام است؟';
  Q15.QImageName = '15';
  Q15.QAnswerList = ['مولکول', 'سلول', 'ژن', 'عصب'];
  Q15.QCorrectAnswer = 1;

  var Q16 = Question();
  Q16.QTitle = 'بهترین بازیکن جام جهانی 2006 آلمان چه کسی شد؟';
  Q16.QImageName = '16';
  Q16.QAnswerList = [
    'زین الدین زیدان',
    'فابیو کاناوارو',
    'میروسلاو کلوزه',
    'لوعیس فیگو'
  ];
  Q16.QCorrectAnswer = 0;

  return [
    Q1,
    Q2,
    Q3,
    Q4,
    Q5,
    Q6,
    Q7,
    Q8,
    Q9,
    Q10,
    Q11,
    Q12,
    Q13,
    Q14,
    Q15,
    Q16
  ];
}
