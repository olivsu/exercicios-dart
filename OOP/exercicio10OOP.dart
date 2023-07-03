enum CalculadoraOperacoes { soma, subtracao, divisao, multiplicacao }

class Calculadora {
  double valor1 = 0;
  double valor2 = 0;
  double _resultado = 0;
  late CalculadoraOperacoes operacao;

  void calcular() {
    this._resultado = 0;

    switch (this.operacao) {
      case CalculadoraOperacoes.soma:
        this._resultado = this.valor1 + this.valor2;
        break;
      case CalculadoraOperacoes.subtracao:
        this._resultado = this.valor1 - this.valor2;
        break;
      case CalculadoraOperacoes.divisao:
        this._resultado = this.valor1 / this.valor2;
        break;
      case CalculadoraOperacoes.multiplicacao:
        this._resultado = this.valor1 * this.valor2;
        break;
    }
  }

  double getResultado() {
    return this._resultado;
  }
}

void main() {
  Calculadora calc = Calculadora();
  calc.valor1 = 2;
  calc.valor2 = 2;
  calc.operacao = CalculadoraOperacoes.soma;

  calc.calcular();
  print(calc.getResultado());
}
