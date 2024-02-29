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

class ResistorColorDuo {
  int value(List<String> colors) {
    //?To assure that the list of input atleast has 2 items
    if (colors.length < 2) {
      throw ArgumentError("List must contain at least two colors");
    }

    List<String> firstTwoColors = colors.sublist(0, 2).map((color) => color.toLowerCase()).toList();

    int firstCode = colorNameCode[firstTwoColors[0]] ?? -1;//!checked for null
    int secondCode = colorNameCode[firstTwoColors[1]] ?? -1;//!checked for null
    //?checking if one of the code is actually negative
    if (firstCode.isNegative || secondCode.isNegative) {
      throw ArgumentError("Invalid color(s) provided");
    }
    //? for example we have green-brown green * 10 = 50 + brown = 51
    return firstCode * 10 + secondCode;
  }
}