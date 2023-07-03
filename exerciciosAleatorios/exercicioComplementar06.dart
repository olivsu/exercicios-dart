class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  void aplicarDesconto() {
    double desconto = preco * 0.1;
    preco -= desconto;
  }
}

void main() {
  Produto produto = Produto('Celular', 1000);

  print('Preço original: ${produto.preco}');
  produto.aplicarDesconto();
  print('Preço com desconto: ${produto.preco}');
}
