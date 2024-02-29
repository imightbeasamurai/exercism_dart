class Pangram {
  bool isPangram(String phrase) {
    String check = phrase.toLowerCase();
    check = check.replaceAll(RegExp('[\\s_\\d.,"]+'), "");
    List<String> checkWord = check.split("");
    Set<String> checkChar = Set<String>();
    List<String> result =
        checkWord.where((letter) => checkChar.add(letter)).toList();
    if (result.length == 26)
      return true;
    else
      return false;
  }
}
