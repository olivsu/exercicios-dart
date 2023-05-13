import 'dart:math';
void main(List<String> args) {
// exercicio 2
  //List<int> listaNumeral = [2,3, 7, 34, 22, 21, 33, 23, 20, 1, 16, 28, 19, 100, 10, 1];
  
  List<int> listaNumeral = List.generate(10, (_) => Random().nextInt(100));
  print('Lista original: $listaNumeral');

  // Removendo os itens pares da lista original
  listaNumeral.removeWhere((numero) => numero % 2 == 0);
  print('Lista somente com ímpares: $listaNumeral');

  // Criando uma nova lista com os valores pares da lista original
  List<int> listaNumeralPares = listaNumeral.where((numero) => numero % 2 == 0).toList();
  print('Lista somente com pares: $listaNumeralPares');
}