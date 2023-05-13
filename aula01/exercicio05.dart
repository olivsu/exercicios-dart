void main(List<String> args) {
 // exercicio 5

  int fibonacci(int n) {
    if (n <= 0) {
      return 0;
    } else if (n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }

  int n = 10; // número de vezes que a sequência de Fibonacci será executada
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}