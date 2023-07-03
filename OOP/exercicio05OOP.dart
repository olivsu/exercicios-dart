class Pais {
  String nomePais;
  int populacao;
  double area;
  
  Pais(this.nomePais, this.populacao, this.area);
}

void main() {
  Pais pais = Pais('Brasil', 1111111111, 222222222.2222);
  
  print('Nome do país é: ${pais.nomePais}, total de população: ${pais.populacao} e sua área é: ${pais.area}');
}