class Bob {
  String response(String msg) {
    final questionMark = '?';
    int lastchar = msg.trim().length - 1;
    if (msg.trim().isEmpty) 
      return "Fine. Be that way!";
    if (msg.toUpperCase() == msg && msg[lastchar] == questionMark && msg.contains(RegExp(r'[a-zA-Z]')))
      return "Calm down, I know what I\'m doing!";
    else if (msg[lastchar] == questionMark)
      return "Sure.";
    else if (msg.toUpperCase() == msg && msg.contains(RegExp(r'[a-zA-Z]')))
      return "Whoa, chill out!";
    else
      return "Whatever.";
  }
}
