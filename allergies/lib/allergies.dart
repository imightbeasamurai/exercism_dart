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

class Allergies {
  /* 
 EXAMPLE: allergicTo(chocolate, 5)
  'chocolate' is 32: 100000
  score 5 is:        00101
  bitwise => 00000 which is equal to 0
  then it returns false
EXAMPLE2: allergicTo(chocolate, 32)
  'chocolate' is 32: 100000
  score is 32:       100000
  bitwise => 100000 which is 32
  32 != 0 it return true
 */
  bool allergicTo(String item, int score) => (allergyScore[item]! & score) != 0;

/*
EXAMPLE: list(248)
bitwise =>
For 'eggs' (score: 1): 1 & 248 = 0 (not allergic)
For 'peanuts' (score: 2): 2 & 248 = 0 (not allergic)
For 'shellfish' (score: 4): 4 & 248 = 0 (not allergic)
For 'strawberries' (score: 8): 8 & 248 = 8 (allergic)
For 'tomatoes' (score: 16): 16 & 248 = 16 (allergic)
For 'chocolate' (score: 32): 32 & 248 = 32 (allergic)
For 'pollen' (score: 64): 64 & 248 = 64 (allergic)
For 'cats' (score: 128): 128 & 248 = 128 (allergic)
**********
and on the if condition we check if eggs, and score 
would return true or false, its false then we iterate
when we get to strawberries for example the allergicTo
would return true and the item would be added to the 
list that we would return meaning that the person is actually
allergic to the item. And it keeps going over all the items
in the Map allergy
 */
  List<String> list(int score) {
    List<String> allergicItems = [];
  
    for (String item in allergyScore.keys) {
     if (allergicTo(item, score)) {
        allergicItems.add(item);
      }
    }
  
    return allergicItems;
}
}

