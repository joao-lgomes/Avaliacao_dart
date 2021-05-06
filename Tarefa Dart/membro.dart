class Membro {
  String _nome;
  String _apelido;
  String _telefone;
  String _tecnologias;

  //Construtor
  Membro(this._nome, this._apelido, this._telefone, this._tecnologias);

  //Get
  String get getNome => _nome;
  String get getApelido => _apelido;
  String get getTelefone => _telefone;
  String get getTecnologias => _tecnologias;

  //Set
  set setNome(String nome) => _nome;
  set setApelido(String apelido) => _apelido;
  set setTelefone(String telefone) => _telefone;
  set setTecnologias(String tecnologias) => _tecnologias;

  //toString
  String toString() =>
      " Nome: " +
      getNome +
      " Apelido: " +
      getApelido +
      " Telefone: " +
      getTelefone +
      " Tecnologias: " +
      getTecnologias;
}
