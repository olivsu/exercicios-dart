class Triangulo {
  double lado1;
  double lado2;
  double lado3;
  
  Triangulo(this.lado1, this.lado2, this.lado3);
  
  double calcularPerimetro() {
    return lado1 + lado2 + lado3;
  }
}

void main() {
  Triangulo triangulo = Triangulo(2, 4, 3);
  
  double perimetro = triangulo.calcularPerimetro();
  
  print("O perimetro do triangulo é: $perimetro");
}