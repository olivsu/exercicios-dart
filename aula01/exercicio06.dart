import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // exercicio 1
  List<double> notas = [3, 2.5, 5.6, 7, 7.5, 8, 1.5, 9, 10];
  int c = 0;
  double media = 0;
  for (int i = 0; i < notas.length; i++) {
    if (notas[i] >= 7) {
      media += notas[i];
      c++;
    }
  }

  if (media > 7) {
    print('Você passou');
  } else {
    print('Nota insuficiente');
  }
}

/*
}
int terceiroMenor(List<int> lista) {
  Set<int> setLista = Set<int>.from(lista);
  List<int> listaSemDuplicados = List<int>.from(setLista);
  listaSemDuplicados.sort();
  
  if (listaSemDuplicados.length >= 3) {
    return listaSemDuplicados[2];
  } else {
    throw Exception("A lista deve ter pelo menos três elementos");
  }
}
 */
