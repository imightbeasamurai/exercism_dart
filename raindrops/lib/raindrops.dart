class Raindrops {
  String pling = 'Pling';
  String plang = 'Plang';
  String plong = 'Plong';
  String convert(int num) {
    String res = '';
    if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
      if (num % 3 == 0) res += pling;
      if (num % 5 == 0) res += plang;
      if (num % 7 == 0) res += plong;
      return res;
    } else
      return num.toString();
  }
}
