import 'dart:io';
import 'package:leetcode_solutions/difficulty_model.dart';
import 'package:leetcode_solutions/utils.dart';

void main(List<String> arguments) async {
  print('Please, choose difficulty');
  final dir = Directory('test/solutions_tests/easy');
  final List<FileSystemEntity> entities = await dir.list().toList();


  print(Difficulty.values.asMap().entries.map((e) => "${e.key}. ${e.value.name}").join("\n"));
  final difficulty = getDifficultyFromInput(stdin.readLineSync());
  print(difficulty.name);
  Process.start("flutter", ["test", entities.first.path, "-r", "expanded"], mode: ProcessStartMode.inheritStdio);
}
