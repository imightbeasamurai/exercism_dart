class Isogram {
  bool isIsogram(String word) {
    if (word.isEmpty) return true;
    Set<String> wordToChar = {};
    for (int i = 0; i < word.length; i++) {
      String currChar = word[i].toLowerCase();
      if (currChar == ' ' || currChar == '-') continue;
      if (wordToChar.contains(currChar)) {
        return false;
      }
      wordToChar.add(currChar);
    }
    return true;
  }
}
