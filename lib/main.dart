import 'dart:math';
void main() {
print(' ------------------- Task 1 -------------------');

  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));
  print('Список зі 100 чисел до 100: $numbers');

  print('\n 65-й елемент: ${numbers[64]}');

  numbers.insert(49, 1000000000);
  print('\n 1000000000 розміщено на позицію 50');

  List<int> valuesToRemove = [24, 45, 66, 88];
  numbers.removeWhere((element) => valuesToRemove.contains(element));
  print('\n Список після видалення значень 24, 45, 66, 88: $numbers');
 
  int sumDivBy3 = 0;
  for (int number in numbers) {
    if (number % 3 == 0) {
      sumDivBy3 += number;
    }
  }
  print('\n Сума елементів, що діляться на 3 без залишку: $sumDivBy3');

  List<int> temp = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('\n Довжина списку парних елементів: ${temp.length}');
  print('$temp');
}