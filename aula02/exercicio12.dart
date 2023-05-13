// class Tarefa {
//   String descricao;
//   bool concluida;
  
//   Tarefa(this.descricao, {this.concluida = false});
// }

List<Tarefa> tarefas = [];

void addTarefa(String descricao) {
  Tarefa tarefa = Tarefa(descricao);
  tarefas.add(tarefa);
}

void concluirTarefa(int indice) {
  tarefas[indice].concluida = true;
}

void listarTarefasConcluidas() {
  print("Tarefas concluídas:");
  for (Tarefa tarefa in tarefas) {
    if (tarefa.concluida) {
      print("- ${tarefa.descricao}");
    }
  }
}

void listarTodasAsTarefas() {
  print("Todas as tarefas:");
  for (Tarefa tarefa in tarefas) {
    String status = tarefa.concluida ? "concluída" : "pendente";
    print("- ${tarefa.descricao} ($status)");
  }
}

void main() {
  addTarefa("Lavar a louça");
  addTarefa("Passar roupa");
  addTarefa("Fazer compras");

  concluirTarefa(0);
  concluirTarefa(2);

  listarTarefasConcluidas();
  listarTodasAsTarefas();
}