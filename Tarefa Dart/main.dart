import 'membro.dart';
import 'projeto.dart';
import 'tarefa.dart';
import 'dart:io';

void main() {
  //criando os arrayLists que conterão cada uma das classes
  List<Membro> membros = [];
  List<Projeto> projetos = [];
  List<Tarefa> tarefas = [];

  int opc1 = 0;
  int opc2 = 0;

  do {
    print('\n\n\n-------------------- MENU DE OPÇOES --------------------');
    print('1 - Inserir elementos');
    print('2 - Mostrar projetos cadastrados');
    print('3 - Mostrar membros cadastrados');
    print('4 - Mostrar tarefas cadastradas');
    print('5 - Mostrar o Projeto com maior prazo de duração');
    print('6 - finalizar');
    opc1 = int.parse(stdin.readLineSync());

    switch (opc1) {
      case 1:
        print('\n\nEm qual classe quer inserir?');
        print('1 - Membro');
        print('1 - Projeto');
        print('1 - Tarefa');
        opc2 = int.parse(stdin.readLineSync());

        switch (opc2) {
          case 1:
            String nome;
            String apelido;
            String tel;
            String tecnologias;
            print('Digite o nome do membro: ');
            nome = stdin.readLineSync();
            print('Digite o apelido do membro: ');
            apelido = stdin.readLineSync();
            do {
              print('Digite o telefone do membro: ');
              tel = stdin.readLineSync();
            } while (tel.length < 10 || tel.length > 11);
            print('Digite as tecnologias que domina: ');
            tecnologias = stdin.readLineSync();
            membros.add(Membro(nome, apelido, tel, tecnologias));
            break;

          case 2:
            String nome;
            String contratante;
            int tempo;
            String tarefa;
            List<String> tarefas = [];
            String membro;
            List<String> membros = [];
            print('Digite o nome do projeto: ');
            nome = stdin.readLineSync();
            print('Digite o nome do contratante: ');
            contratante = stdin.readLineSync();
            print('Digite o tempo de execução em dias');
            tempo = int.parse(stdin.readLineSync());
            do {
              print(
                  'Digite cada uma das tarefas do projeto(Caso não tenha mais, digite 0 e envie)');
              tarefa = stdin.readLineSync();
              if (tarefa != '0') {
                tarefas.add(tarefa);
              }
            } while (tarefa != '0');
            do {
              print(
                  'Digite cada um dos membros do projeto(Caso não tenha mais, digite 0 e envie)');
              membro = stdin.readLineSync();
              if (membro != '0') {
                membros.add(membro);
              }
            } while (membro != '0');
            projetos.add(Projeto(nome, contratante, tempo, tarefas, membros));
            break;

          case 3:
            String projeto;
            String responsavel;
            String tipo = '';
            String status = '';
            print('Digite o nome do Projeto: ');
            projeto = stdin.readLineSync();
            print('Digite o responsável da tarefa: ');
            responsavel = stdin.readLineSync();
            print('\nDigite o tipo do projeto: ');
            print('1 - Concepção');
            print('2 - Elaboração');
            print('3 - Construção');
            print('4 - Transição');
            opc2 = int.parse(stdin.readLineSync());
            if (opc2 == 1) {
              tipo = 'Concepção';
            } else if (opc2 == 2) {
              tipo = 'Elaboração';
            } else if (opc2 == 3) {
              tipo = 'Construção';
            } else if (opc2 == 4) {
              tipo = 'Transição';
            }
            print('Digite o status do projeto:');
            print('1 - Planejada');
            print('2 - Em andamento');
            print('3 - Concluída');
            opc2 = int.parse(stdin.readLineSync());
            if (opc2 == 1) {
              status = 'Planejada';
            } else if (opc2 == 2) {
              status = 'Em andamento';
            } else if (opc2 == 3) {
              status = 'Construção';
            } else {
              print("Opção inválida!");
            }
            tarefas.add(Tarefa(projeto, responsavel, status, tipo));

            break;
        }
        break;

      case 2:
        print('\n\n TODOS OS PROJETOS');
        for (int i = 0; i < projetos.length; i++) {
          print(projetos[i].toString());
        }
        break;

      case 3:
        print('\t\t TODOS OS MEMBROS');
        for (int i = 0; i < membros.length; i++) {
          print(membros[i].toString());
        }
        break;

      case 4:
        print('\t\t TODAS AS TAREFAS');
        for (int i = 0; i < tarefas.length; i++) {
          print(tarefas[i].toString());
        }
        break;

      case 5:
        if (projetos.isEmpty) {
          print('Não há nenhum projeto');
        } else {
          int maior = 0;
          for (int i = 0; i < projetos.length; i++) {
            if (projetos[maior].getTempo < projetos[i].getTempo) {
              maior = i;
            }
          }
          print("O projeto que possui maior duração é: " +
              projetos[maior].getNome);
        }
        break;

      case 6:
        print('Digite o nome do projeto que será procurado: ');
        String nomeProjeto = stdin.readLineSync();
        for (int i = 0; i < projetos.length; i++) {
          if (nomeProjeto == projetos[i].getNome) {
            projetos[i].finalizaProjeto();
          }
        }
        break;
    }
  } while (opc1 != 6);
}
