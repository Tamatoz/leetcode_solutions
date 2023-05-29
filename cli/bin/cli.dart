import 'dart:io';
import 'package:leetcode_solutions/difficulty_model.dart';
import 'package:leetcode_solutions/utils.dart';

void main(List<String> arguments) {
  print('Please, choose difficulty');
  print(Difficulty.values.asMap().entries.map((e) => "${e.key}. ${e.value.name}").join("\n"));
  final difficulty = getDifficultyFromInput(stdin.readLineSync());
  print(difficulty.name);
}
