import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask1.txt');
  String nums_txt = "";
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  await for (String line in lines) {
    nums_txt += line;

    List<int> arr = [];
    String vrem = "";
    for (int i = 0; i < nums_txt.length; i++) {
      if (nums_txt[i] != " ") {
        vrem += nums_txt[i];
      }
      if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
        arr.add(int.parse(vrem));
        vrem = "";
      }
    }
    int answ = 0;
    int max = arr.first;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > max) {
        max = arr[i];
      }
    }
    print(max);
    for (int i = 0; i < arr.length; i++) {
      if(arr[i] < max -1){
        answ += arr[i];
      }
    }
    print(answ);
  }
}
