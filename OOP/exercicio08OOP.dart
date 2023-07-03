class CalcularConsumoMedia {
  double combustivel;
  double combustivelAtual;
  int quilometragem;
  
  CalcularConsumoMedia(this.combustivel, this.combustivelAtual, this.quilometragem);
  
  double calcularConsumoMedia() {
    return quilometragem / combustivel;
  }
}

class Carro {
  double capacidadeDoTanque;
  double quilometragemPercorrida;
  double combustivelDisponivel;
  
  Carro(this.capacidadeDoTanque, this.combustivelDisponivel, this.quilometragemPercorrida);
  
  void encherTanque() {
    combustivelDisponivel = capacidadeDoTanque;
  }
  
  double calcularMedia() {
    return quilometragemPercorrida / combustivelDisponivel;
  }
}

void main() {
  Carro carro = Carro(20.0, 120.0, 30.0);
  
  print('Média de consumo do carro: ${carro.calcularMedia()} km');
  
  CalcularConsumoMedia calcular = CalcularConsumoMedia(50.0, 20.0, 1200);
  print('Média de consumo calculada é: ${calcular.calcularConsumoMedia()} km');
  
}