import 'package:leetcode_solutions/problems/talabat_solution.dart';
import 'package:test/test.dart';

void main() {
  test('Talabat Solution, Input = "2, 3"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(2, 3);

    expect(answer, 6);
  });
  test('Talabat Solution, Input = "0, 3"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(0, 3);

    expect(answer, 0);
  });
  test('Talabat Solution, Input = "0, 0"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(0, 0);

    expect(answer, 0);
  });
  test('Talabat Solution, Input = "1266, 5"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(1266, 5);

    expect(answer, 1266*5);
  });
  test('Talabat Solution, Input = "-2, 5"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(-2, 5);

    expect(answer, -10);
  });
  test('Talabat Solution, Input = "2, -5"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(2, -5);

    expect(answer, -10);
  });
  test('Talabat Solution, Input = "-2, -5"', () {
    const solution = TalabatSolution();

    final answer = solution.multiply(-2, -5);

    expect(answer, 10);
  });

}
