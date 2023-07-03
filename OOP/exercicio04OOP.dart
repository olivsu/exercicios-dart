class FolhaSalarial {
  late double valorHora;
  late double horasTrabalhadas;
  
  FolhaSalarial(this.valorHora, this.horasTrabalhadas);
  
  double calcular(){
    return valorHora * horasTrabalhadas;
  }
}

class FolhaSalarialVendedor extends FolhaSalarial {
  late double totalAReceber;
  late int vendas;
  late double bonificacao;
  
  FolhaSalarialVendedor(double valorHora, double horasTrabalhadas, 
                        this.vendas, this.bonificacao) : super(valorHora, horasTrabalhadas);
  
  @override
  double calcular(){
    double valorVendas = this.vendas * this.bonificacao;
    
    double totalAReceber = super.calcular();
    return totalAReceber + valorVendas;
  }
}

void main() {
  FolhaSalarial folha = FolhaSalarial(8.30, 160);
  folha.calcular();
  print('Total a receber é: ${folha.calcular()} ');
  
  FolhaSalarialVendedor folhaVendedor = FolhaSalarialVendedor(8.30, 160, 25, 5.0);
  folhaVendedor.calcular();
  print('Valor total que o vendedor irá receber é de: ${folhaVendedor.calcular()}');
}  
