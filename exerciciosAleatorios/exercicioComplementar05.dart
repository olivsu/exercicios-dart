class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

class Biblioteca {
  String titulo;
  String autor;
  int pagina;
  late List<Livro> livros;

  Biblioteca(this.titulo, this.autor, this.pagina) {
    livros = [];
  }

  void adicionarLivro(Livro livro) {
    livros.add(livro);
  }

  void imprimirLivros() {
    for (var livro in livros) {
      print('Título: ${livro.titulo}, Autor: ${livro.autor}');
    }
  }
}

void main() {
  Biblioteca biblioteca = Biblioteca('Minha Biblioteca', 'Nome do Autor', 100);

  Livro livro1 = Livro('Pequeno Príncipe', 'Nome Fake 1');
  Livro livro2 = Livro('Cinderela', 'Nome Fake 2');

  biblioteca.adicionarLivro(livro1);
  biblioteca.adicionarLivro(livro2);

  biblioteca.imprimirLivros();
}
