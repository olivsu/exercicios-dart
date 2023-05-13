void depositar(double saldoAtual, double valor) {
  if (valor <= 0) {
    throw ArgumentError('Valor inválido para depósito');
  }
  double novoSaldo = saldoAtual + valor;
  print('Depósito de R\$ $valor realizado com sucesso!');
  print('Novo saldo: R\$ $novoSaldo');
}

void sacar(double saldoAtual, double valor) {
  if (valor <= 0) {
    throw ArgumentError('Valor inválido para saque');
  }
  if (saldoAtual < valor) {
    throw Exception('Saldo insuficiente para o saque');
  }
  double novoSaldo = saldoAtual - valor;
  print('Saque de R\$ $valor realizado com sucesso!');
  print('Novo saldo: R\$ $novoSaldo');
}

void main() {
  double saldoAtual = 1000;
  print('Saldo atual: R\$ $saldoAtual');
  try {
    depositar(saldoAtual, 500);
    sacar(saldoAtual, 2000); // Gera uma exceção
  } on ArgumentError catch (e) {
    print(e);
  } on Exception catch (e) {
    print(e);
  }
}