String twoFer([String? name]) {
  if (name != null && name.isNotEmpty) {
    return "One for $name, one for me.";
  } else
    return "One for you, one for me.";
}
