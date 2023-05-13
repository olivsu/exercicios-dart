import 'dart:math';
void main(List<String> args) {
    // exercicio 3

  Random random = Random();
  int numeroGerado;

  do {
    numeroGerado = random.nextInt(11);
    print('Número gerado: $numeroGerado');
  } while (numeroGerado != 7);

  print('Número 7 gerado!');
}