import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask3.txt');
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
    int min = arr.first;
    int min_index = 0;
    double answ = 0;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] < min) {
        min = arr[i];
        min_index = i;
      }
    }
    int i = 0;
    for (; i < min_index; i++) {
      answ += arr[i];
    }
    answ /= i;
    print(answ);
  }
}
