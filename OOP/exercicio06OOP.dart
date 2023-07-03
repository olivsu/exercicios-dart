class Pais {
  String nomePais;
  int populacao;
  double area;
  
  Pais(this.nomePais, this.populacao, this.area);
}

class Continente {
  String nome;
  late List<Pais> _paises;
  
  Continente(this.nome) {
    _paises = [];
  }
  
  void addPais(Pais pais) {
    _paises.add(pais);
  }
  
  int get totalPopulacao {
    int populacaoTotal = 0;
    for (var pais in _paises) {
      populacaoTotal += pais.populacao;
    }
    return populacaoTotal;
  }
  
  double get totalArea {
    double areaTotal = 0;
    for (var pais in _paises) {
      areaTotal += pais.area;
    }
    return areaTotal;
  }
}

void main() {
  Continente americaDoSul = Continente('América do Sul');
  
  Pais brasil = Pais('Brasil', 111111111, 222222222.22222);
  Pais uruguai = Pais('Uruguai', 4444444, 555555.5555);
  
  americaDoSul.addPais(brasil);
  americaDoSul.addPais(uruguai);
  
  print("Continente: ${americaDoSul.nome}");
  print('População: ${americaDoSul.totalPopulacao}');
  print('Área: ${americaDoSul.totalArea}');
}
