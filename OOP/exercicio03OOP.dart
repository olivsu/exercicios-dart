class Carro {
  int quilometragemAtual = 0;
  double gasolina = 0;
  String placa = "";
  bool ligado = false;
  
  void ligar(){
    if (ligado) {      
      print('O carro está ligado');
    }else{
      ligado = true;
      print('O carro está sendo ligado');
    }
  }
  
  void desligar(){
    if (ligado) {
      ligado = false;
      print('O carro está desligado');
    }else{
      print('O carro está ligado');
    }
  }
  
  void acelerar(){
    if (ligado) {
      print('O carro não pode ser acelerado pois estádesligado');
    }else{
      print('Acelerando');
    }
  }
  
  void frear(){
    print('Freando o carro');
  }
}

class Jipe extends Carro {  
  bool quatroPorQuatro = false;
  
  void ativar4x4(){
    if (ligado) {      
      print('Ativando o 4x4');
    }else{
      quatroPorQuatro = true;
      print('O 4x4 está sendo ativado!');
    }
  }
  
  void desativar4x4(){
    if (ligado) {      
      print('Desativando 4x4');
    }else{
      quatroPorQuatro = true;
      print('4x4 está desativado');
    }
  }
}

void main(){
  Carro carro = Carro();
  carro.ligar();
  carro.desligar();
  carro.acelerar();
  carro.frear();  
  Jipe jipe = Jipe();
  jipe.ligar();
  jipe.desligar();
  jipe.acelerar();
  jipe.frear();
  jipe.ativar4x4();
  jipe.desativar4x4();
}