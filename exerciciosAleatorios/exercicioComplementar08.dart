class Pessoa {
  String nome;
  int idade;
  
  Pessoa(this.nome, this.idade);
  
  String meApresentar() {
    return "Olá, me chamo $nome tenho $idade anos";
  }
}

void main(){
  Pessoa pessoa = Pessoa("Vanessa", 18);
  pessoa.meApresentar();
}

