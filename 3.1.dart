import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String bub_0) {
  // функция принимает стринг
  List<int> a = []; // пустой массив
  String bub = ""; // пустоая строка
  bool m = true;

  for (int i = 0; i < bub_0.length; i++) {
    //перебор строки
    while (bub_0[i] != " " && m) {
      //работает цикл пока текущий элемнт не пробел
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
        //проверка есть ли следущее
        i++; //если есть то и++
      } else {
        m = false; //если нет то заканчиваем перебор
      }
    }
    a.add(int.parse(bub)); //добавляет число в массив
    bub = ""; //обнуляет временную переменную
  }
  return (a);
}

void main() async {
   final file = File('input.txt');
  var output = File('output.txt');
  Stream<String> lines = file.openRead() 
      .transform(utf8.decoder) 
      .transform(LineSplitter()); 
  List<String> ab = [];
  await for (var line in lines) {
    ab.add(line); 
  }
  List<int> win = transforming(ab[0]); 
  List<int> num = transforming(ab[1]); 
  var res = output.openWrite(); 
  for (int i = 0; i < num[0]; i++) { 
    List<int> ticket = transforming(ab[i + 2]);
    int num = 0; 
    for (int n = 0; n < win.length; n++) { 
      for (int m = 0; m < ticket.length; m++) {
        if (ticket[m] == win[n]) {
          num++; 
        }
      }
    }
    if (num >= 3) { 
      res.write('Lucky\n'); 
    } else res.write('Unlucky\n');

  }
  res.close(); 
}
