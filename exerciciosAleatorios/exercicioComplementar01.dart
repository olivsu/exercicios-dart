// ignore_for_file: unused_local_variable

import 'dart:io';

void main(List<String> args) {
 // exercicio 1
  print('insira seu nome: ');
  var nome = stdin.readLineSync();

  print('Olás $nome! Agora insira sua idade: ');
  String? entradaIdade = stdin.readLineSync();
  int idade = int.parse(entradaIdade!);
  //int idade = int.parse(stdin.readLineSync());//entradaIdade!);

  int cemAnos = 100 - idade;
  print('$nome, você tem $idade e faltam $cemAnos para completar 100 anos');

}
