class ContaBancaria {
  int numeroConta;
  String titular;

  ContaBancaria(this.numeroConta, this.titular);
}

class Banco {
  String nome;
  List<ContaBancaria> contas;

  Banco(this.nome) : contas = [];

  void addConta(ContaBancaria conta) {
    contas.add(conta);
  }

  void removerConta(int numeroConta) {
    contas.removeWhere((conta) => conta.numeroConta == numeroConta);
  }

  void exibirContas() {
    for (var conta in contas) {
      print('Número da conta: ${conta.numeroConta}, Titular: ${conta.titular}');
    }
  }
}

void main() {
  Banco banco = Banco('Meu Banco');

  banco.addConta(ContaBancaria(1, 'João'));
  banco.addConta(ContaBancaria(2, 'Maria'));
  banco.addConta(ContaBancaria(3, 'José'));

  banco.exibirContas();

  banco.removerConta(2);

  print('Após a remoção:');
  banco.exibirContas();
}
