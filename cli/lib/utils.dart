import 'difficulty_model.dart';
import 'package:collection/collection.dart';

Difficulty getDifficultyFromInput(String? input) {
  if (input == null || input.isEmpty) {
    throw Exception("Difficulty must not be empty");
  }
  int? index = int.tryParse(input);

  if (index != null) {
    if (index < 0 || index > Difficulty.values.length - 1) {
      throw Exception("Index is out of Difficulties count");
    }
    return Difficulty.values[index];
  }
  final difficulty =
      Difficulty.values.firstWhereOrNull((element) => element.name == input.toLowerCase());
  if (difficulty == null) {
    throw Exception("Invalid name of difficulty");
  }
  return difficulty;
}
