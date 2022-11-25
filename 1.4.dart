import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';


void main() {
stdout.write('Min');
  		int? a = int.parse(stdin.readLineSync()!);

  		stdout.write('Max');
   		int? b = int.parse(stdin.readLineSync()!);
		
		var list = [];
   		for (int i = 0; i < 20; i++) {
   			list.add(Random().nextInt(b - a) + a);
   		}
   			for (int i = 0; i < list.length; i++) {
   				stdout.write("${list[i]} ");
   			}
		}
