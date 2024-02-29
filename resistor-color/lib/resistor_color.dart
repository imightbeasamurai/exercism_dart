final Map<String, int> colorNameCode = {
  'black': 0,
  'brown': 1,
  'red': 2,
  'orange': 3,
  'yellow': 4,
  'green': 5,
  'blue': 6,
  'violet': 7,
  'grey': 8,
  'white': 9,
};

class ResistorColor {
  final List<String> colors = colorNameCode.keys.toList();

  dynamic colorCode(String color) {
    if (color.isNotEmpty)
      return colorNameCode[color];
    else
      throw ArgumentError('Provide a valid color!');
  }
}
