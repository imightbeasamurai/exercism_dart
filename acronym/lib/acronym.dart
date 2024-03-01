class Acronym {
  String abbreviate(String phrase) {
    if (phrase.isEmpty) return phrase;
    List<String> words = phrase.toUpperCase().split(RegExp(r'\s|_|-')).where((word) => word.isNotEmpty).toList();
    String abb = '';
    for (String word in words) {
      abb += word[0];
    }
    return abb;
  }
}
