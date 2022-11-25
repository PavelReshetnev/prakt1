import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() async {
final file = File('numsTask1.txt');
Stream<String> a =
    file.openRead().transform(utf8.decoder).transform(LineSplitter());
List<String> b = [];
await for (var line in a) {
  b.add(line);
}
String done = " ";
for (int i = 0; i < b.length; i++) {
  var string = b[i];
  final len = string.split('');
  int num = len.length;
  if (num % 2 != 0) {
    done += b[i] + " ";
  }
}
print(done);
}

