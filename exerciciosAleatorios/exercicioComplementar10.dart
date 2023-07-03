class Retangulo {
  double comprimento;
  double largura;
  
  Retangulo(this.comprimento, this.largura);
  
  double calcularArea() {
    return comprimento / largura;
  }
  
  double calcularPerimetro(){
    return comprimento * comprimento + largura * largura;
  }
}

void main() {
  Retangulo retangulo = Retangulo(5.0, 3.0);
  double area = retangulo.calcularArea();
  double perimetro = retangulo.calcularPerimetro();
  
  print('A área do retangulo é: $area');
  print('O perímetro do retangulo é: $perimetro');
}