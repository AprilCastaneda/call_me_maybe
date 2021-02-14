import 'dart:math';

class Answer {
  Random random = Random();
  String _currentAnswer = 'Hmmm... don\'t know yet';

  final answers = [
    'I am feline good about it.',
    'I\'m paw-sitive.',
    'Not right meow.',
    'Yes, I\'m purr-ety sure.',
    'No, not on purr-pose.',
    'No. No dogs either.',
    'Dashing through the.. No',
    'No way! Are you kitten me?'
  ];

  String get currentAnswer => _currentAnswer;

  void randomAnswer() {
    int randIdx = random.nextInt(answers.length) + 1;
    _currentAnswer = answers[randIdx];
  }
}
