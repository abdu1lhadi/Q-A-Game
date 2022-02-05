import 'question.dart';

class AppBrain {
  int _questionNumber = 0;

  List<Question> _questionGroup = [
    Question(
      'عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب',
      'images/image-1.jpg',
      true,
    ),
    Question(
      'القطط هي حيونات لاحمة',
      'images/image-2.jpg',
      true,
    ),
    Question(
      'الصين موجودة في القارة الافريقية',
      'images/image-3.jpg',
      false,
    ),
    Question(
      'الارض مسطحة وليست كروية',
      'images/image-4.jpg',
      false,
    ),
    Question(
      'بإستطاعة الانسان البقاء على قيد الحياة بدون اكل اللحوم',
      'images/image-5.jpg',
      true,
    ),
    Question(
      'الشمس تدور حول الارض و الارض تدور حول القمر',
      'images/image-6.jpg',
      false,
    ),
    Question(
      'الحيونات لا تشعر بالالم',
      'images/image-7.jpg',
      false,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionGroup[_questionNumber].Text;
  }

  String getQuestionImage() {
    return _questionGroup[_questionNumber].Image;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_questionNumber].Answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
