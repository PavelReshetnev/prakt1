import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
int n = int.parse(stdin.readLineSync()!);
int proiz = 1;
for (int i = 1; i <= n; i++) {
  if (i % 3 == 0) {
    proiz *= i;
  }
}
print(proiz);
}
