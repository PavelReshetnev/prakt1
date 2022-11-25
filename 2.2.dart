import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() {
 List<int> a = [];

for (int i = 0; i < 100; i++) {
  if (i % 2 != 0) {
    a.add(i);
  }
}
print(a);
}

