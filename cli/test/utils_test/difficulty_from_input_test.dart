import 'package:leetcode_solutions/difficulty_model.dart';
import 'package:leetcode_solutions/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('difficultyByIndex', () {
    test('Input is null', () {
      expect(
        () => getDifficultyFromInput(null),
        throwsA(
          isA<Exception>().having(
            (error) => error.toString(),
            "message",
            contains("Difficulty must not be empty"),
          ),
        ),
      );
    });
    test('Input is empty', () {
      expect(
        () => getDifficultyFromInput(""),
        throwsA(
          isA<Exception>().having(
            (error) => error.toString(),
            "message",
            contains("Difficulty must not be empty"),
          ),
        ),
      );
    });
    test('Input is 0', () {
      final result = getDifficultyFromInput("0");
      expect(result, Difficulty.easy);
    });
    test('Input is 1', () {
      final result = getDifficultyFromInput("1");
      expect(result, Difficulty.medium);
    });
    test('Input is -1', () {
      expect(
            () => getDifficultyFromInput("-1"),
        throwsA(
          isA<Exception>().having(
                (error) => error.toString(),
            "message",
            contains("Index is out of Difficulties count"),
          ),
        ),
      );
    });
    test('Input is 2', () {
      expect(
            () => getDifficultyFromInput("2"),
        throwsA(
          isA<Exception>().having(
                (error) => error.toString(),
            "message",
            contains("Index is out of Difficulties count"),
          ),
        ),
      );
    });
  });

  group('difficultyByName', () {
    test('Input is "easy"', () {
      final result = getDifficultyFromInput("easy");
      expect(result, Difficulty.easy);
    });
    test('Input is "medium"', () {
      final result = getDifficultyFromInput("medium");
      expect(result, Difficulty.medium);
    });
    test('Input is "eAsy"', () {
      final result = getDifficultyFromInput("eAsy");
      expect(result, Difficulty.easy);
    });
    test('Input is "MEDIUM"', () {
      final result = getDifficultyFromInput("MEDIUM");
      expect(result, Difficulty.medium);
    });
    test('Input is "test"', () {
      expect(
            () => getDifficultyFromInput("test"),
        throwsA(
          isA<Exception>().having(
                (error) => error.toString(),
            "message",
            contains("Invalid name of difficulty"),
          ),
        ),
      );
    });
  });
}
