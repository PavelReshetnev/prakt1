import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask3.txt');
  String numstxt = "";
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  await for (String line in lines) {
    numstxt += line;

    List<int> arr = [];
    String vrem = "";
    for (int i = 0; i < numstxt.length; i++) {
      if (numstxt[i] != " ") {
        vrem += numstxt[i];
      }
      if (numstxt[i] == " " || i + 1 == numstxt.length) {
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
