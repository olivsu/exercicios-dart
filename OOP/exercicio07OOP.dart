class Pessoa {
  String nome;
  int idade;
  
  Pessoa(this.nome, this.idade);
}

class MembroClube extends Pessoa {
  int matricula;
  
  MembroClube(String nome, int idade, this.matricula) : super(nome, idade);
}

class VendaIngresso {
  String data;
  String evento;
  Pessoa comprador;
  
  VendaIngresso(this.data, this.evento, this.comprador);
  
  void vendaIngresso() {
    if(comprador == MembroClube) {
      print('Ingresso vendido');
    } else {
      print('Compre seu ingresso');
    }
  }
}

void main() {
  Pessoa pessoa = Pessoa('José', 23);
  MembroClube membro = MembroClube('José', 23, 12345);
  VendaIngresso ingresso = VendaIngresso('25-12-2023', 'Natal', pessoa);
  
  ingresso.vendaIngresso();
  print('Somente membros do clube pode comprar o ingresso');
  ingresso.comprador = membro;
  ingresso.vendaIngresso();
  print('Ingresso efetuado');
}