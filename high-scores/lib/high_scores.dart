class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  List<int> sortList() {
    List<int> sortedList = scores.toList();
    sortedList.sort();
    return sortedList;
  }

  int personalBest() {
    return sortList().last;
  }

  List<int> personalTopThree() {
    return sortList().reversed.take(3).toList();
  }
}
