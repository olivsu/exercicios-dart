import 'dart:math';

void main() {
  var pessoas = ['Alice', 'Bob', 'Charlie', 'David'];

  if (pessoas.length % 2 != 0) {
    print('A quantidade de pessoas precisa ser par para realizar o sorteio.');
    return;
  }

  var sorteados = <String>{};
  var amigoSecreto = <String, String>{};

  for (var pessoa in pessoas) {
    while (true) {
      var amigo = pessoas[Random().nextInt(pessoas.length)];
      if (amigo != pessoa && !sorteados.contains(amigo)) {
        amigoSecreto[pessoa] = amigo;
        sorteados.add(amigo);
        break;
      }
    }
  }

  amigoSecreto.forEach((pessoa, amigo) {
    print('$pessoa tirou $amigo como amigo secreto.');
  });
} 