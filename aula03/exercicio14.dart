import 'dart:io';

List<List<int>> tabuleiro = [
//C 0, 1, 2 L 
  [0, 0, 0], //0
  [0, 0, 0], // 1
  [0, 0, 0] // 2
];

int jogador1 = X; 
int jogador2 = O; 
int vezDoJogador = jogador1;

//  exibir o tabuleiro
void exibirTabuleiro(List<List<int>> tabuleiro) {
  for (List<int> linha in tabuleiro) {
    print(linha);
  }
}

//  verificar se um jogador ganhou
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

// verificar se não existem mais jogadas disponíveis
bool verificarJogadasDisponiveis(List<List<int>> tabuleiro) {
  for (List<int> linha in tabuleiro) {
    if (linha.contains(0)) {
      return true;
    }
  }
  
  return false;
}

// fazer uma jogada
void fazerJogada(List<List<int>> tabuleiro, int linha, int coluna, int jogador) {
  if (tabuleiro[linha][coluna] == 0) {
    tabuleiro[linha][coluna] = jogador;
    
    if (verificarGanhador(tabuleiro, jogador)) {
      print('Jogador $jogador ganhou!');
      return;
    }
    
    if (!verificarJogadasDisponiveis(tabuleiro)) {
      print('Não existem mais jogadas disponíveis!');
      return;
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
