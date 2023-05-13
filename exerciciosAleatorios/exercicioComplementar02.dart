import 'dart:io';

void main(List<String> args) { 
  // exercicio 2

  print('Digite um número:');
  String? entradaNumero = stdin.readLineSync();
  int numero = int.parse(entradaNumero!);

  if (numero % 2 == 0) {
    print('O número é par');
  } else {
    print('O número é impar');
  }
}