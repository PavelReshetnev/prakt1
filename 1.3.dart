import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
  List<String> list = [];

  bool state = true;
  while (state) {
    String? a = stdin.readLineSync()!;
    if (a != '') {
      list.add(a);
      print(list);
    } else {
      print(list);
      state = false;
    }
  }
  int min = int.parse(list[0]);
  int max = int.parse(list[0]);

  for (int i = 0; i < list.length; i++) {
    if (list[0].length < list[i].length) {
      min = int.parse(list[i]);
    } else if (list[0].length > list[i].length) {
      max = int.parse(list[i]);
    }
  }
}
