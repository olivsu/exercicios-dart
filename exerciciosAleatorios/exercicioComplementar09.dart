class Circulo {
  double raio;
  double pi = 3.14;
  
  Circulo(this.raio, this.pi);
  
  double calcularArea(){
    return pi * raio * raio;
  }
  
  double calcularPerimetro(){
    return pi * pi * raio;
  }
}

void main() {
  Circulo circulo = Circulo(4, 3.14);
  double area = circulo.calcularArea();
  double perimetro = circulo.calcularPerimetro();
  
  print('A área do circulo é: $area');
  print('O perímetro do circulo é: $perimetro');
}