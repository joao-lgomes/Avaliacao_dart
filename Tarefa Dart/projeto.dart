class Projeto {
  String _nome;
  String _contratante;
  int _tempo;
  List<String> _tarefas;
  List<String> _membros;

  //Construtor
  Projeto(
      this._nome, this._contratante, this._tempo, this._tarefas, this._membros);

  //Get
  String get getNome => _nome;
  String get getContratante => _contratante;
  int get getTempo => _tempo;
  List<String> get getTarefas => _tarefas;
  List<String> get getMembros => _membros;

  //Set
  set setNome(String nome) => _nome;
  set setContratante(String contratante) => _contratante;
  set setTarefa(String tarefa) {
    _tarefas.add(tarefa);
  }

  set setMembro(String membro) {
    _membros.add(membro);
  }

  void finalizaProjeto() {
    print(
        "Esse código só será disponibilizado no seu servidor após a totalidade do pagamento chegar na minha conta, rsrs");
  }

  @override
  String toString() =>
      "Nome do Projeto: " +
      getNome +
      " Contratante: " +
      getContratante +
      " Tempo: " +
      getTempo.toString() +
      " Tarefa: " +
      getTarefas.toString() +
      " Membros no projeto: " +
      getMembros.toString();
}
