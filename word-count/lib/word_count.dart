class WordCount {
  Map<String, int> countWords(String s) {
    Map<String, int> res = {}; 
    RegExp regexp = RegExp(r"\d+|[a-z]+('[a-z]+)?", caseSensitive: false);
    regexp.allMatches(s).forEach((m) => res.update(m.group(0)!.toLowerCase(), (i) => i + 1, ifAbsent: () => 1));
    return res;
  }
}
