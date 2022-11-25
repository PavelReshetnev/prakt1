import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  List<int> list = [];
  for (int i = 0; i < 10; i++) {
    // String? a = stdin.readLineSync()!;
    list.add(Random().nextInt(10));
  }
  print(list);
  int min = list.first;
  for (int i = 0; i < list.length; i++) {
    if (min > list[i]) {
      min = list[i];
    }
  }
  print(min);
}
