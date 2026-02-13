import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle = 'اولین مرحله در روش علمی کدام است ؟';
  Q1.QImageName = '1';
  Q1.QCorrectAnswer = 0;
  Q1.QAnswerList = ['مشاهده', 'فرضیه سازی ', 'جمع آوری اطلاعات', 'نتیجه‌گیری'];

  var Q2 = Question();
  Q2.QTitle =
      'سوخت هسته‌ای دارای انرژی ...... نسبت به سوخت‌های فسیلی می‌باشد و دارای حجم زباله‌های ...... نسبت به سوخت‌های فسیلی می‌باشد.';
  Q2.QImageName = '2';
  Q2.QAnswerList = [
    'کمتر _ کمتر',
    'بیشتر _ بیشتر',
    'کمتر _ بیشتر',
    'بیشتر _ کمتر'
  ];
  Q2.QCorrectAnswer = 3;

  var Q3 = Question();
  Q3.QTitle = 'کدام یک از موارد زیر از معایب فناوری ساخت خودرو می‌باشد ؟';
  Q3.QImageName = '3';
  Q3.QAnswerList = [
    'جابجایی سریع‌تر مسافران ',
    'راحتی و آسایش بیشتر در گرما و سرما ',
    'تولید گازهای همچون دی اکسید کربن',
    'هزینه کمتر و سرعت بیشتر'
  ];
  Q3.QCorrectAnswer = 2;

  var Q4 = Question();
  Q4.QTitle =
      'اگر چگالی جسمی را دو برابر کنیم اما جرم جسم ثابت باشد ، حجم جسم چه تغییری می‌کند ؟';
  Q4.QImageName = '4';
  Q4.QAnswerList = ['نصف', 'دو برابر ', 'چهار برابر ', 'تغییر نمی‌کند'];
  Q4.QCorrectAnswer = 0;

  var Q5 = Question();
  Q5.QTitle = 'کدام کمیت جزء واحدهای اصلی در دستگاه بین المللی نیست ؟';
  Q5.QImageName = '5';
  Q5.QAnswerList = ['جرم', 'طول', 'زمان', 'حجم'];
  Q5.QCorrectAnswer = 3;

  var Q6 = Question();
  Q6.QTitle =
      'اگر مقدار معینی از یک ماده در دمای معمولی دارای حجم ثابت و شکل غیر مشخصی باشد آن ماده ..... است ؟';
  Q6.QImageName = '6';
  Q6.QAnswerList = ['بخار ', 'مایع', 'جامد ', 'گاز '];
  Q6.QCorrectAnswer = 1;

  var Q7 = Question();
  Q7.QTitle = 'کدام مورد از ویژگی اختصاصی گازها است ؟';
  Q7.QImageName = '7';
  Q7.QAnswerList = [
    'داشتن حجم معین ',
    'تراکم پذیری',
    'انبساط ناچیز ',
    'شکل معین'
  ];
  Q7.QCorrectAnswer = 1;

  var Q8 = Question();
  Q8.QTitle = 'به تبدیل مستقیم بخار آب به یخ چه می‌گویند ؟';
  Q8.QImageName = '8';
  Q8.QAnswerList = ['انجماد ', 'فرازش ', 'چگالش', 'تقطیر'];
  Q8.QCorrectAnswer = 2;

  var Q9 = Question();
  Q9.QTitle = 'رسانایی از ویژگی‌های کدام ماده است ؟';
  Q9.QImageName = '9';
  Q9.QAnswerList = ['سکه', 'خط‌ کش چوبی ', 'پارچه ', 'روکش سیم'];
  Q9.QCorrectAnswer = 0;

  var Q10 = Question();
  Q10.QTitle = 'کدام ماده زیر باعث جلای قاشق و چنگال نمی‌شود ؟';
  Q10.QImageName = '10';
  Q10.QAnswerList = ['نقره ', 'کروم ', 'آهن', 'نیکل'];
  Q10.QCorrectAnswer = 3;

  var Q11 = Question();
  Q11.QTitle =
      'اگر قطرات آب حاصل از سرد شدن ابرها ، از توده‌های هوای سرد عبور کند ..... به وجود می‌آید ؟';
  Q11.QImageName = '11';
  Q11.QAnswerList = ['باران', 'برف', 'تگرگ', 'سرماریزه'];
  Q11.QCorrectAnswer = 2;

  var Q12 = Question();
  Q12.QTitle =
      'دانشی که برای شناخت جو و هوای اطراف زمین به مطالعه و تحقیق می‌پردازد چه نام دارد ؟';
  Q12.QImageName = '12';
  Q12.QAnswerList = ['هواشناسی', 'زمین شناسی', 'پیش بینی', 'هواکره'];
  Q12.QCorrectAnswer = 0;

  var Q13 = Question();
  Q13.QTitle = 'کدام یک جز منابع آب شیرین نیست ؟';
  Q13.QImageName = '13';
  Q13.QAnswerList = [
    'آب زیرزمینی',
    'بخار آب موجود در هوا',
    'آب رودخانه',
    'آب اقیانوس'
  ];
  Q13.QCorrectAnswer = 3;

  var Q14 = Question();
  Q14.QTitle = 'کدام نوع از اشعه‌های خورشیدی باعث آفتاب سوختگی می‌شود ؟';
  Q14.QImageName = '14';
  Q14.QAnswerList = ['نور مرئی ', 'فرابنفش', 'رادیویی ', 'ایکس'];
  Q14.QCorrectAnswer = 1;

  var Q15 = Question();
  Q15.QTitle =
      'کدام ماده غذایی انرژی لازم برای انجام دادن فعالیت‌های بدن را تامین می‌کند ؟';
  Q15.QImageName = '15';
  Q15.QAnswerList = ['ویتامین ', 'آب ', 'کربوهیدرات', 'پروتئین'];
  Q15.QCorrectAnswer = 2;

  return [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15];
}
