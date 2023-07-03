class ContaCorrente {
double _saldo = 100;

void deposito(double valor) {
  if (valor > 0) {
      _saldo += valor;
        print("Depósito realizado com sucesso.");
   } else {
        print("Valor inválido para depósito.");
  }
}

void saque(double valor) {
  if (valor > 0 && _saldo >= valor) {
    _saldo -= valor;
      print("Saque realizado com sucesso.");
  } else {
      print("Saldo insuficiente para saque ou valor inválido.");
  }
}

void exibirSaldo() {
print("Saldo atual: $_saldo");
}
}

void main() {

ContaCorrente conta = ContaCorrente();
conta.exibirSaldo();
conta.deposito(50);
conta.exibirSaldo();
conta.saque(50);
conta.exibirSaldo();
conta.saque(100);
conta.exibirSaldo();
}
