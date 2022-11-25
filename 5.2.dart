import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('numsTask1.txt');
  String nums_txt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  await for (var line in lines) {
    nums_txt += line;
  }
  List<double> arr = [];
  String vrem = "";
  
  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != ";") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
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
  nums_txt = "";
  for (int i = 0; i < arr.length; i++) {
    nums_txt += arr[i].toString() + ";";
  }
  var sink = file.openWrite(); 
  sink.write(nums_txt);
  sink.close();
}
