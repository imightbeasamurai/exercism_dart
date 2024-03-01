
  final Map<String, String> openingBrackets = {
    "(": ")",
    "[": "]",
    "{": "}",
  };
class MatchingBrackets {

  final Set<String> closingBrackets = openingBrackets.values.toSet();

  bool isPaired(String brackets) {
    final stack = <String>[];

    for (int charCode in brackets.runes) {
      String char = String.fromCharCode(charCode);
      if (openingBrackets.containsKey(char)) {
        stack.add(char);
      } else if (closingBrackets.contains(char)) {
        if (stack.isEmpty || openingBrackets[stack.removeLast()] != char) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
