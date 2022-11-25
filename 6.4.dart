import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() async {
  print('на что делим?');
  int? a = int.parse(stdin.readLineSync()!);
  var list = [];
  for (int i = 0; i < 500; i++) {
    int? num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      if (num % a == 0) {
        list.add(num);
        // sum += a;
      } else {
        print('wrong one, try again');
      }
    } else if (num < 0) {
      print('noooooooooooooooo.........');
      var sum = list.reduce((i, j) => i + j);
      print(sum);
      break;
    }
  }
}
