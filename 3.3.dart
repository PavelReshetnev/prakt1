import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() async {
  final file = File('height.txt');

  Stream<String> lines = file
      .openRead() //читает файл
      .transform(utf8.decoder) // декодирует в UTF-8
      .transform(LineSplitter()); 
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) {
    // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  List<int> list = ai.map(int.parse).toList();
  int volume = 0;
  int visot = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      if (list[i] < list[j]) {
        visot = list[i];
      } else {
        visot = list[j];
      }
      int len = j - i;
      if (volume < visot * len) {
        volume = visot * len;
      }
    }
  }

  print(volume);
}