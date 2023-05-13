class Usuario {
  String nome;
  String senha;

  Usuario(this.nome, this.senha);
}

List<Usuario> usuarios = [];

void cadastrarUsuario(String nome, String senha) {
  Usuario usuario = Usuario(nome, senha);
  usuarios.add(usuario);
}

bool fazerLogin(String nome, String senha) {
  for (Usuario usuario in usuarios) {
    if (usuario.nome == nome && usuario.senha == senha) {
      return true;
    }
  }
  return false;
}

void main(){
  cadastrarUsuario("joao", "123");
cadastrarUsuario("maria", "456");

bool login1 = fazerLogin("joao", "123"); // verdadeiro
bool login2 = fazerLogin("maria", "123"); // falso

print(login1); // true
print(login2); // false
}