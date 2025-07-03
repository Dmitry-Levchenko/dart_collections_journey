import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';
void main() {
print(' ------------------- Task 1 -------------------');

  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));
  print('\n Список зі 100 чисел до 100: $numbers');

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


  print('\n ------------------- Task 2 -------------------');

  final Set<String> uniqueNames1 = Set.from(ukrainianNames1);
  final Set<String> uniqueNames2 = Set.from(ukrainianNames2);

  final Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('\n Кількість спільних імен: ${commonNames.length}');
  print('\n Спільні імена: $commonNames');

  final Set<String> onlyInFirst = uniqueNames1.difference(uniqueNames2);
  print('\n Унікальні імена лише в першому списку: $onlyInFirst');

  final Set<String> onlyInSecond = uniqueNames2.difference(uniqueNames1);
  print('\n Унікальні імена лише в другому списку: $onlyInSecond');

  print('\n ------------------- Task 3 -------------------');

  final wordGenerator = WordGenerator();
  List<String> nounsList = wordGenerator.randomNouns(50);
  Map<String, int> nounsMap = {
    for (var word in nounsList) word: word.length,
  };

  Map<String, int> tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  print('\n Ключі з парною довжиною слова:');
  tempNouns.keys.forEach((key) => print(key));
}