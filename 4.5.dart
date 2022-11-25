import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';
 
void main() {
  int x0 = -1;
  int x1 = 3;
  int y0 = -2;
  int y1 = 4;
  print("Знач a");
  double a = double.parse(stdin.readLineSync()!);
  print("Знач в");
  double b = double.parse(stdin.readLineSync()!);
 
  if (x0 < a && a < x1 && y0 < b && b < y1) {
    print("Принадлежит");
  } else {
    print("Не принадлежит");
  }
}
