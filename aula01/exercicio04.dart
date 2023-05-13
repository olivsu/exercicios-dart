import 'dart:io'; 

void main() {
  double valor1, valor2, resultado; 

  String operacao; 

  print('Digite o primeiro valor: '); 
  valor1 = double.parse(stdin.readLineSync()!); // lê o valor digitado e o converte para double

  print('Digite o segundo valor: '); 
  valor2 = double.parse(stdin.readLineSync()!); 

  print('Digite a operação (soma, subtração, divisão ou multiplicação): '); 
  operacao = stdin.readLineSync()!; 

  switch (operacao) { 
    case 'soma':
      resultado = valor1 + valor2; 
      break;
    case 'subtração':
      resultado = valor1 - valor2; 
      break;
    case 'divisão':
      if (valor2 == 0) { // verifica se o segundo valor é igual a zero
        print('Não é possível dividir por zero!'); 
        return; 
      } else {
        resultado = valor1 / valor2;
      }
      break;
    case 'multiplicação':
      resultado = valor1 * valor2; 
      break;
    default:
      print('Operação inválida!'); 
      return; 
  }

  print('O resultado da operação $operacao entre $valor1 e $valor2 é: $resultado'); 
}
