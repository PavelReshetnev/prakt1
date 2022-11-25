import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

Map<String,dynamic> solve(Map<String,dynamic> tem) {
for(String key in tem.keys){
  double a = 0;
  for (int i=0; i<30;i++){
    a +=tem[key][i];
  }
tem[key] = a ~/30;
}
  return (tem);
}

void main() {
Map <String,dynamic> temp = {
'янв': List.generate(30, (i) => -20 + Random().nextInt(-8 - -35)),
'фев': List.generate(30, (i) => -13 + Random().nextInt(-5 - -29)),
'март': List.generate(30, (i) => 1 + Random().nextInt(8 - -10)),
'апр': List.generate(30, (i) => 5 + Random().nextInt(12 - -5)),
'май': List.generate(30, (i) => 10 + Random().nextInt(18 - 10)),
'июнь': List.generate(30, (i) => 17 + Random().nextInt(26 - 17)),
'июль': List.generate(30, (i) => 21 + Random().nextInt(31 - 21)),
'авг': List.generate(30, (i) => 18 + Random().nextInt(29 - 18)),
'сен': List.generate(30, (i) => 12 + Random().nextInt(19 - 12)),
'окт': List.generate(30, (i) => 0 + Random().nextInt(7 - 0)),
'нов': List.generate(30, (i) => -10 + Random().nextInt(3 - -20)),
'дек': List.generate(30, (i) => -19 + Random().nextInt(-11 - -32)),

};
print(solve(temp));
}
