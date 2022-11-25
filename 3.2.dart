import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

void main() async {
  final file = File('nums.txt');
  Stream<String> a =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> b = [];
  await for (var line in a) {
    b.add(line);
  }
  String done = " ";
  List<int> bb = b.map(int.parse).toList();
  for (int i = 0; i < bb.length; i++) {
    if (bb[i] % 2 == 0) {
      bb.remove(bb[i]);
    }
  }
  for (int i = 0; i < bb.length; i++) {
    done += bb[i].toString() + " ";
  }
  var res = file.openWrite();
  res.write(done);
  res.close();
}