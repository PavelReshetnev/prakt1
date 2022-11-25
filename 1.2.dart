import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

var list = [];
void main() {
  for (int i = 0; i < 1000; i++) {
    int? a = int.parse(stdin.readLineSync()!);
    if (a > 0) {
      list.add(a);
      print(list);
    } else  if (a == 0){
      print(list);

      var sum = list.reduce((i, j) => i + j);
      print('сумма = $sum');
      var mult = list.reduce((i, j) => i * j);
      print('произведение = $mult');
      var avg = sum / list.length;
      print('сред. = $avg');
      break;
    }
  }
}