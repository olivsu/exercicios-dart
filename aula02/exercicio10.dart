import 'dart:math';

List<int> randomAleatorio(int length, int maxNumber) {
  Random random = Random();
  List<int> list = List.generate(length, (_) => random.nextInt(maxNumber));
  return list;
}

int encontrarTerceiroMenor(List<int> list) {
  list.sort();
  return list[2];
}

void main() {
  List<int> randomList = randomAleatorio(6, 25);
  print(randomList);

  int terceiroMenor = encontrarTerceiroMenor(randomList);
  print('O terceiro menor numero é: $terceiroMenor');
}