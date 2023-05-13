import 'dart:math';
import 'dart:io';

void main() {
  //hello world
  print('Hello World');
  //exercicio 1
  int idade = 25;

  if (idade <= 12) {
    print('Criança');
  } else if (idade >= 12 && idade <= 17) {
    print('Adolescente');
  } else if (idade >= 18 && idade < 60) {
    print('Adulto');
  } else {
    print('Idoso');
  }
}
