import 'dart:math';

class Answer {
  Random random = Random();
  String _currentAnswer = 'Hmmm... don\'t know yet';

  final answers = [
    'But, of course!',
    'As I see it, yes',
    'Don\'t count on it',
    'It is known',
    'Meow-yes',
    'My reply is no',
    'My sources say no',
    'Outlook not so good'
  ];

  String get currentAnswer => _currentAnswer;

  void randomAnswer() {
    int randIdx = random.nextInt(answers.length) + 1;
    _currentAnswer = answers[randIdx];
  }
}
