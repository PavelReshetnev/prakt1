import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask1.txt');
  String numstxt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter());
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
    int answ = 1;
    bool check = true;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] < min) {
        min = arr[i];
        min_index = i;
      }
    }
    for (int i = min_index + 1; i < arr.length; i++) {
      answ *= arr[i];
    }
      print(answ);
    }
  }
