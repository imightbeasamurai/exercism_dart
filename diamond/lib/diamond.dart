class Diamond {
  List<String> rows(String letter) {
    final int letterNumber = letter.toUpperCase().codeUnits[0] - 64;
    List<String> result = [];
    for (int rowNumber = 0; rowNumber < letterNumber; rowNumber++) {
      result.add(row(rowNumber, letterNumber));
    }
    for (int rowNumber = letterNumber - 2; rowNumber >= 0; rowNumber--) {
      result.add(row(rowNumber, letterNumber));
    }
    return result;
  }
  String row(final int rowNo, final int numOfLetters) {
    String letter = String.fromCharCode(rowNo + 65);
    List<String> letters = List.filled(2 * numOfLetters - 1, ' ');
    letters[numOfLetters - rowNo - 1] = letter;
    letters[numOfLetters + rowNo - 1] = letter;
    return letters.join();
  }
}