 import 'dart:io';
 import 'dart:math';
 void main(List<String> args) {
  
// exercicio 3
  
  List<int> numeros = List.generate(10, (_) => Random().nextInt(100));
  print('Lista de valores inteiros: $numeros');
  
  List<int> numerosOrdenados = numerosCrescentes(numeros);
  print('Lista ordenada: $numerosOrdenados');
}

List<int> numerosCrescentes(List<int> lista) {
  List<int> listaOrdenada = List.from(lista);
  listaOrdenada.sort();
  return listaOrdenada;
}