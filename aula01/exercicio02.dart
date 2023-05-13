void main(){  
  // exercicio 2
  int numero = 5;
  int fatorial = 1;

  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  print('$numero! = $fatorial');
}