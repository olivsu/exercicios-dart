void main(List<String> args) {
  
  // exercicio 3

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (var i in a) {
    if (i < 5) {
      print(i);
    }
  }
  print('Esses são menores que 5');
}