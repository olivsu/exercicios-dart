import 'dart:io';
// ignore: unused_import
import "dart:math";

 List<int> diferencaListas(List<int> lista1, List<int> lista2) {
  Set<int> setLista1 = Set<int>.from(lista1);
  Set<int> setLista2 = Set<int>.from(lista2);
  
  Set<int> diferenca = setLista1.difference(setLista2);
  diferenca.addAll(setLista2.difference(setLista1));
  
  return diferenca.toList();
}
void main(){
  List<int> lista1 = [7, 8, 9, 10];
  List<int> lista2 = [7, 10, 14];
  List<int> listaResultado = diferencaListas(lista1, lista2);
  print(listaResultado);
}
