// ignore_for_file: unnecessary_string_escapes

import 'Questions.dart';

class Quizbrain {
  int _qn = 0;
  // ignore: prefer_final_fields
  List<Questionbank> _ques = [
    Questionbank(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Questionbank(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Questionbank(q: 'A slug\'s blood is green.', a: true),
    Questionbank(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questionbank(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questionbank(q: 'Google was originally called \"Backrub\".', a: true),
    Questionbank(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true)
  ];
  String getQ() {
    return _ques[_qn].Question;
  }

  bool getA() {
    return _ques[_qn].ans;
  }

  int getQn() {
    return _qn;
  }

  void incrementQn() {
    if (_qn < _ques.length - 1) {
      _qn++;
    }
  }

  bool isfinished() {
    if (_qn >= _ques.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qn = 0;
  }

  int takelen() {
    return _ques.length;
  }
}
