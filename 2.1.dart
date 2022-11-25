import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
  List<int> a = [100];
  for (int i = 0; i < 99; i++) {
    a.add(a[i] - 3);
}
print(a);
}