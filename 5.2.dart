import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask1.txt');
  String numstxt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  await for (var line in lines) {
    numstxt += line;
  }
  List<double> arr = [];
  String vrem = "";
  
  for (int i = 0; i < numstxt.length; i++) {
    if (numstxt[i] != ";") {
      vrem += numstxt[i];
    }
    if (numstxt[i] == ";" || i + 1 == numstxt.length) {
      arr.add(double.parse(vrem));
      vrem = "";
    }
  }
  for (int j = 0; j < arr.length; j++) {
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        double vrem = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = vrem;
      }
    }
  }
  numstxt = "";
  for (int i = 0; i < arr.length; i++) {
    numstxt += arr[i].toString() + ";";
  }
  var sink = file.openWrite(); 
  sink.write(numstxt);
  sink.close();
}
