class Tarefa {
  String _projeto;
  String _responsavel;
  String _tipo;
  String _status;

  //Construtores
  Tarefa(this._projeto, this._responsavel, this._status, this._tipo);

  //Getter
  String get getProjeto => _projeto;
  String get getResponsavel => _responsavel;
  String get getStatus => _status;
  String get getTipo => _tipo;

  //Setters
  set setProjeto(String _projeto) => _projeto;
  set setResponsavel(String responsavel) => _responsavel;
  set setTipo(String tipo) => _tipo;
  set setStatus(String status) => _status;

  //toString
  String toString() =>
      "Nome do Projeto: " +
      getProjeto +
      " Responsável: " +
      getResponsavel +
      " Status: " +
      getStatus +
      " Tipo: " +
      getTipo;
}
