import 'package:flutter_quiz/data/question.dart';

List<Question> getQList() {
  var Q1 = Question();
  Q1.QTitle = 'کدام یک از بازی های شهر بازی را می پسندید ؟';
  Q1.QImageName = '1';
  Q1.QCorrectAnswer = 2;
  Q1.QAnswerList = [
    'ترن هوایی',
    'قطار یا قایق',
    'نمایش های کمدی و طنز',
    'وسایل هیجان آور و چرخ و فلک',
    'هیچ کدام رفتن به شهربازی را دوست ندارم'
  ];

  var Q2 = Question();
  Q2.QTitle = 'آیا خودتان به اشتباه خود می خندید ؟';
  Q2.QImageName = '2';
  Q2.QAnswerList = ['اصلا', 'خیلی کم', 'برخی مواقع', 'معمولا', 'همیشه'];
  Q2.QCorrectAnswer = 0;

  var Q3 = Question();
  Q3.QTitle = 'عکس العملتان در برابر شوخی دوستانتان چیست ؟';
  Q3.QImageName = '3';
  Q3.QAnswerList = [
    'عصبی می شوم',
    'ناراحت خواهم شد',
    'شوخی او برایم جالب است و می خندم',
    'شوخی او را تلافی می کنم',
    'در صدد تلافی بیشتر بر می آیم'
  ];
  Q3.QCorrectAnswer = 0;

  var Q4 = Question();
  Q4.QTitle = 'اولین فکری که هنگام برخاستن در صبح به ذهنتان می رسد چیست ؟';
  Q4.QImageName = '3';
  Q4.QAnswerList = [
    'کار یا تحصیل',
    'سختی های زندگی',
    'صبحانه',
    'روزی که می خواهم بگذرانم',
    'چگونگی انجام کارهایی که تا شب دارم'
  ];
  Q4.QCorrectAnswer = 3;

  var Q5 = Question();
  Q5.QTitle = 'اگر مشخصه صورت فردی باشید ، کدام بخش از صورت او هستید ؟';
  Q5.QImageName = '3';
  Q5.QAnswerList = ['چین و چروک', 'لکه', 'خال', 'کک و مک', 'خنده'];
  Q5.QCorrectAnswer = 1;

  var Q6 = Question();
  Q6.QTitle = 'اغلب جذب کدام یک از برنامه های تلویزیونی می شوید ؟';
  Q6.QImageName = '3';
  Q6.QAnswerList = [
    'جذب اخبار و مستند می شوم',
    'فیلم های درام و زندگینامه را می پسندم',
    'فیلم های هیجان انگیز و پلیسی را دوست دارم',
    'فیلم های عشقی را می پسندم',
    'از فیلم های کمدی و کارتون خوشم می آید'
  ];
  Q6.QCorrectAnswer = 1;

  var Q7 = Question();
  Q7.QTitle = 'شما لبخند می زنید؟';
  Q7.QImageName = '3';
  Q7.QAnswerList = ['اصلا', 'خیلی کم', 'برخی از اوقات', 'معمولا', 'خیلی زیاد'];
  Q7.QCorrectAnswer = 1;

  var Q8 = Question();
  Q8.QTitle = 'اغلب احساسات خود را نشان می دهید ؟';
  Q8.QImageName = '3';
  Q8.QAnswerList = ['اصلا', 'خیلی کم', 'برخی از اوقات', 'اغلب', 'همیشه'];
  Q8.QCorrectAnswer = 1;

  var Q9 = Question();
  Q9.QTitle = 'آیا حیوانات را دوست دارید ؟';
  Q9.QImageName = '3';
  Q9.QAnswerList = [
    'نه اصلا دوست ندارم',
    'کمی از حیوانات را دوست دارم',
    'از برخی از حیوانات خوشم می آید',
    'بیشتر حیوانات را دوست دارم',
    'من عاشق تمام حیوانات هستم'
  ];
  Q9.QCorrectAnswer = 1;

  var Q10 = Question();
  Q10.QTitle = 'دوست داشتید چه پرنده ای باشید ؟';
  Q10.QImageName = '3';
  Q10.QAnswerList = ['شباهنگ', 'جغد', 'عقاب', 'فلامینگو', 'پنگوئن'];
  Q10.QCorrectAnswer = 1;

  var Q11 = Question();
  Q11.QTitle = 'شما عاشق کدام یک از آلت موسیقی می باشید ؟';
  Q11.QImageName = '3';
  Q11.QAnswerList = [
    'عاشق پیانو هستم',
    'ویولن را دوست دارم',
    'سازدهنی را می پسندم',
    'عاشق گیتار زدن هستم',
    'دف زدن را دوست دارم'
  ];
  Q11.QCorrectAnswer = 1;

  var Q12 = Question();
  Q12.QTitle = 'از نظر دیگران شما .... هستید ؟';
  Q12.QImageName = '3';
  Q12.QAnswerList = [
    'بی رحم و مروت',
    'بی احساس',
    'زیبا',
    'محبوب و دوست داشتنی',
    'لذت جو و خوش گذرانید'
  ];
  Q12.QCorrectAnswer = 1;

  var Q13 = Question();
  Q13.QTitle = 'شعار شما در زندگی چیست ؟';
  Q13.QImageName = '3';
  Q13.QAnswerList = [
    'وقت بسیار با ارزش است',
    'سحرخیز باش تا کامروا باشی',
    'آنچه برای خود می پسندی، برای دیگران هم بپسند',
    'زندگی کن و به دیگران هم اجازه زندگی کردن بده',
    'هر چه می خواهد پیش آید خوش آید'
  ];
  Q13.QCorrectAnswer = 1;

  return [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13];
}
