void main() {
  List<String> cepList = ['12345-678', '09876-543', '11111-111'];

  try {
    removeCepFromList(cepList, '12345-678');
    print('CEP removido com sucesso!');
  } catch (e) {
    print('Erro ao remover CEP: $e');
  } finally {
    print('Lista de CEPs:');
    print(cepList);
  }
}

void removeCepFromList(List<String> cepList, String cep) {
  if (!cepList.contains(cep)) {
    throw 'CEP não encontrado na lista!';
  }
  cepList.remove(cep);
}
