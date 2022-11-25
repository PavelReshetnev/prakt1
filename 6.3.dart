import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() async {
int? num = int.parse(stdin.readLineSync()!);
if (num % 2 == 0 && num % 10 == 0) {
  stdout.write('Это число чётное и кратное 10. true');
} else if (num % 2 != 0 && num % 10 != 0) {
  stdout.write('Это число нечётное и не кратное 10. false');
} else if (num % 2 != 0 && num % 10 == 0) {
  stdout.write('Это число нечётное, но кратное 10. false');
} else if (num % 2 == 0 && num % 10 != 0) {
  stdout.write('Это число чётное, но не кратное 10. false');
}
}
