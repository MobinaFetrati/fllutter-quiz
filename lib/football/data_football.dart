import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle = 'اولین جام جهانی فوتبال در چه سالی برگزار شد؟';
  Q1.QImageName = '1';
  Q1.QCorrectAnswer = 1;
  Q1.QAnswerList = ['1904', '1930', '1950', '1970'];

  var Q2 = Question();
  Q2.QTitle = 'لیگ قهرمانان یوفا رقابت فوتبال باشگاهی در کدام منطقه است؟';
  Q2.QImageName = '2';
  Q2.QAnswerList = ['اروپا', 'آسیا', 'آفریقا', 'آمریکای جنوبی'];
  Q2.QCorrectAnswer = 0;

  var Q3 = Question();
  Q3.QTitle =
      'نام جایزه معتبری که هر سال به بهترین بازیکن جهان داده می شود چیست؟';
  Q3.QImageName = '3';
  Q3.QAnswerList = [
    'کفش طلای اروپا',
    'توپ طلای فیفا',
    'جایزه بهترین بازیکن مرد سال یوفا',
    ' بهترین بازیکن لیگ قهرمانان اروپا'
  ];
  Q3.QCorrectAnswer = 1;

  var Q4 = Question();
  Q4.QTitle =
      'کدام باشگاه انگلیسی اولین قهرمانی در جام ملت های اروپا در سال 1968 بود؟';
  Q4.QImageName = '4';
  Q4.QAnswerList = ['آرسنال', 'چلسی', ' منچستر یونایتد', 'لیورپول'];
  Q4.QCorrectAnswer = 2;

  var Q5 = Question();
  Q5.QTitle = 'بهترین گلزن تاریخ تیم ملی آلمان کیست؟';
  Q5.QImageName = '5';
  Q5.QAnswerList = [
    'میروسلاو کلوزه',
    'یوآخیم اشترایش',
    'توماس مولر',
    'یورگن کلینزمان'
  ];
  Q5.QCorrectAnswer = 0;

  var Q6 = Question();
  Q6.QTitle = 'ورزشگاه فولاد شهر متعلق به چه تیمی می باشد؟';
  Q6.QImageName = '6';
  Q6.QAnswerList = ['گیتی پسند', 'فجرسپاسی', 'سپاهان', 'ذوب آهن'];
  Q6.QCorrectAnswer = 3;

  var Q7 = Question();
  Q7.QTitle =
      'جوان ترین بازیکنی که تا به حال در مسابقات جام جهانی گل زده است کیست؟';
  Q7.QImageName = '7';
  Q7.QAnswerList = ['رونالدو', 'پله', 'نیمار', 'مسی'];
  Q7.QCorrectAnswer = 1;

  var Q8 = Question();
  Q8.QTitle = 'کدام کشور میزبان جام جهانی فوتبال در سال 1982 بود؟';
  Q8.QImageName = '8';
  Q8.QAnswerList = ['برزیل', 'آرژانتین', 'اسپانیا', 'آلمان'];
  Q8.QCorrectAnswer = 2;

  var Q9 = Question();
  Q9.QTitle = 'تنها دروازه بانی که برنده توپ طلا شده کیست؟';
  Q9.QImageName = '9';
  Q9.QAnswerList = [' لو یاشین', 'مانوئل نویر', 'الیور کان', 'جانلوئیجی بوفون'];
  Q9.QCorrectAnswer = 0;

  var Q10 = Question();
  Q10.QTitle = 'بنیانگذار باشگاه پرسپولیس که بود؟';
  Q10.QImageName = '10';
  Q10.QAnswerList = ['علی پروین', 'تیمسار ربیعی', 'علی عبده', 'محسن پیروزی'];
  Q10.QCorrectAnswer = 2;

  var Q11 = Question();
  Q11.QTitle = 'لقب هلی کوپتر را به کدام بازیکن ایرانی دادند؟';
  Q11.QImageName = '11';
  Q11.QAnswerList = [
    'مهدی مهدوی کیا',
    'وحید هاشمیان',
    'علی دایی',
    'خداداد عزیزی'
  ];
  Q11.QCorrectAnswer = 1;

  var Q12 = Question();
  Q12.QTitle = 'تیری آنری قبل از پیوستن به آرسنال در کدام باشگاه بازی می کرد؟';
  Q12.QImageName = '12';
  Q12.QAnswerList = [' پاری سن ژرمن', 'مارسی', 'لیل', ' آ. اس موناکو'];
  Q12.QCorrectAnswer = 3;

  var Q13 = Question();
  Q13.QTitle =
      'اولین بازیکن آفریقایی که برنده جایزه بهترین بازیکن سال فیفا شد چه کسی بود؟';
  Q13.QImageName = '13';
  Q13.QAnswerList = ['یحیی توره', 'جرج وه‌ آ', 'دیدیه دروگبا', 'ساموئل اتوئو'];
  Q13.QCorrectAnswer = 0;

  var Q14 = Question();
  Q14.QTitle =
      'کدام داور ایتالیایی به اجرای دقیق قوانین شهرت داشت و اغلب از او به عنوان “پلیس زمین” یاد می شد؟';
  Q14.QImageName = '14';
  Q14.QAnswerList = ['بالدز', 'والری', 'کولینا', 'میچلوتی'];
  Q14.QCorrectAnswer = 2;

  var Q15 = Question();
  Q15.QTitle = 'دروازه بان ایران درجام جهانی 1998چه کسی بود؟';
  Q15.QImageName = '15';
  Q15.QAnswerList = [
    'بهزاد غلامپور',
    'احمدرضا عابدزاده',
    'داوود فنایی',
    'پرویز برومند'
  ];
  Q15.QCorrectAnswer = 1;

  return [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15];
}
