import 'dart:io';

const int X = 1;
const int O = 2;

List<List<int>> tabuleiro = [
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
];

int jogador1 = X;
int jogador2 = O;
int vezDoJogador = jogador1;

void exibirTabuleiro(List<List<int>> tabuleiro) {
  for (List<int> linha in tabuleiro) {
    print(linha);
  }
}

bool verificarGanhador(List<List<int>> tabuleiro, int jogador) {
  for (List<int> linha in tabuleiro) {
    if (linha.every((element) => element == jogador)) {
      return true;
    }
  }

  for (int coluna = 0; coluna < tabuleiro.length; coluna++) {
    if (tabuleiro.every((linha) => linha[coluna] == jogador)) {
      return true;
    }
  }

  if (tabuleiro[0][0] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][2] == jogador) {
    return true;
  }

  if (tabuleiro[0][2] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][0] == jogador) {
    return true;
  }

  return false;
}

bool verificarJogadasDisponiveis(List<List<int>> tabuleiro) {
  for (List<int> linha in tabuleiro) {
    if (linha.contains(0)) {
      return true;
    }
  }

  return false;
}

void fazerJogada(List<List<int>> tabuleiro, int linha, int coluna, int jogador) {
  if (tabuleiro[linha][coluna] == 0) {
    tabuleiro[linha][coluna] = jogador;

    if (verificarGanhador(tabuleiro, jogador)) {
      print('Jogador $jogador ganhou!');
      exit(0);
    }

    if (!verificarJogadasDisponiveis(tabuleiro)) {
      print('Não existem mais jogadas disponíveis!');
      exit(0);
    }

    vezDoJogador = jogador == jogador1 ? jogador2 : jogador1;
  }
}

void main() {
  while (true) {
    exibirTabuleiro(tabuleiro);

    print('Vez do jogador $vezDoJogador');

    print('Digite a linha (0-2):');
    int linha = int.parse(stdin.readLineSync()!);

    print('Digite a coluna (0-2):');
    int coluna = int.parse(stdin.readLineSync()!);

    fazerJogada(tabuleiro, linha, coluna, vezDoJogador);
  }
}
