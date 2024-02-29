void main() {
  Map<String, int> allergyScore = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };

  
  bool allergicTo(String item, int score) {
    return (allergyScore[item]! & score) != 0;
  }
  List<String> list(int score) {
    return allergyScore.keys.where((item) => allergicTo(item, score)).toList();
  }
}
