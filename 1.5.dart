import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
  String str = stdin.readLineSync()!;
  final a = str.split(" ");
  int b = a.length;

  print('Кол-во слов = $b');
  str = "start:" + " " + str + " " + ":end";
  print(str);
}
