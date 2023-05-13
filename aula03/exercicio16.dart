// import 'dart:math';

void validateContact(Map<String, String> contact) {
  if (contact['name']?.isEmpty ?? true) {
    throw 'O campo nome é obrigatório.';
  }
  if (contact['phone']?.isEmpty ?? true) {
    throw 'O campo telefone é obrigatório.';
  }
}
void main() {
  List<Map<String, String>> contato = [
    {'nome': 'contato1', 'celular': '9999-9999'},
    {'nome': 'contato2', 'celular': '8888-8888'},
  ];

  Map<String, String> novoContato = {'nome': 'contato3', 'celular': '7777-7777'};
  contato.add(novoContato);

//   try {
//     cadastrarContato(contatos, "Fulano", "12345678");
//     cadastrarContato(contatos, "Fulano2", "123456789");
    print('Lista de contatos:');
  for (var contato in contato) {
    print('${contato['nome']}: ${contato['celular']}');
  } print('Contatos cadastrado com sucesso!');
} cath (e) {
    print('Erro ao cadastrar o novo contato: $e');
  }