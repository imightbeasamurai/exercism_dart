class Anagram {
  List<String> findAnagrams(String word, List<String> list) {
    return list.where((e) => isAnagram(word, e)).toList();
  }

  bool isAnagram(String str1, String str2) {
    return str1.length == str2.length &&
        str1.toLowerCase() != str2.toLowerCase() &&
        sortStr(str1) == sortStr(str2);
  }

  String sortStr(String str) {
    return (str.toLowerCase().split('')..sort()).join();
  }
}
/*EXAMPLE OF WHAT DOES THE CODE DO:
'Hello', <String>['llahm', 'lloeh', 'olleh' 
make Orchestra lower case orchestra then sort it so it becomes
"ehllo" and do the same for the list then compare the sorted
ehllo != ahllm, ehllo ==  ehllo(lloeh)... then it returns the
values that match in input list ['lloeh', 'olleh'] 

*/
