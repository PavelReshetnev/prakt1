import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';


void main() { 
  var AAA = []; 
  var aaa = []; 
  var blyat = new Random(); 
  List<double> rand = new List.generate(20, (i) => -100 + (100 - (-100)) * Random().nextDouble()); 
   
  for(int i = 0; i < rand.length; i++){ 
    if (rand[i] > 0){ 
      AAA.add(rand[i]); 
    } else if(rand[i] < 0){ 
      aaa.add(rand[i]); 
    } 
  } 
  print(AAA); 
  print(aaa); 
}

