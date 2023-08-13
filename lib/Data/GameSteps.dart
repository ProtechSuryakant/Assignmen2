class GameSteps {
  final String title;
  final String steps;

  GameSteps({required this.title, required this.steps});
}

List<GameSteps> steps = [
  GameSteps(steps: '', title: 'There will be total 3 rounds'),
  GameSteps(
      steps:
          'In first round, there will be four cards, each cards consist of two dogs details, where you have to select one.',
      title: 'Round 1 : '),
  GameSteps(
      steps:
          'In second round, there will be two card, which came from you select round 1,Again each card consists of two dogs details.',
      title: 'Round 2 : '),
  GameSteps(
      steps:
          'In third round, there will be only one card consists of two dogs.',
      title: 'Round 3 : '),
  GameSteps(
      steps: 'After selecting one he/she will be the winner Dog', title: '')
];
