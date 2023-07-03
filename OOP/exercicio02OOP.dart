class Nota {
  String descricao = "";
  double nota = 0;
  
  Nota(this.descricao, this.nota);  
}

void main() {

  List<Nota> notas = [];
  notas.add(Nota('Prova 1', 8.0));
  notas.add(Nota('Prova 2', 7.5));
  notas.add(Nota('Prova 3', 9.5));
  
  double somarNota = 0;
  for(var nota in notas){
    somarNota += nota.nota;
  }
  
  double media = somarNota / notas.length;
  
  print('A média geral das notas é: $media');
}