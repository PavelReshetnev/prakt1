import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
  int a = int.parse(stdin.readLineSync()!);

  List<List<int>> chisla = List.generate(a, (i) => List.generate(a, (j) => 1));
  for (int i = 1; i < a; i++) {
    for (int j = 1; j < a; j++) {
      chisla[i][j] = chisla[i - 1][j] + chisla[i][j - 1];
    }
  }

  for (int i = 0; i < a; i++) {
    for (int j = 0; j < a; j++) {
      if (chisla[i][j].toString().length == 1) {
        stdout.write(" ${chisla[i][j]}  ");
        } else {
          stdout.write("${chisla[i][j]}  ");
        }
      }
      print("");
    }
}