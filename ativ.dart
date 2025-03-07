import 'dart:io';

import 'package:ativ/ativ.dart' as ativ;

void main(List<String> arguments) {
   void enter() {
    stdin.readLineSync();
}

  print('Seja bem vindo ao sistema Funcionarios');
  print(' ');
  print('Registre seu nome:');
  //if(nome!=null)
  String? nome = stdin.readLineSync();
  print('Seja bem-vindo(a) $nome');
  print('Pressione [ENTER] para continuar');
  enter();

 Funcionarios novaContaFuncionario = Funcionarios(nome);
 
  print('Qual o salario atual?');
  String? _salario = stdin.readLineSync();
  if (_salario != null) {
    try {
      double valorSalario = double.parse(_salario);
      novaContaFuncionario.setSalario = valorSalario;
      bool sair = false;
      while (!sair) {
        print(
            'Oque você deseja fazer? \n 1-Depositar \n 2-Exibir info \n 3-Sair');
        String? escolha = stdin.readLineSync();
        switch (escolha) {
          case "1":
            print('Quanto valor percentual deseja aumentar?');
            String aument = stdin.readLineSync() ?? '';
            double valorAument = double.parse(aument);
            novaContaFuncionario.AumentarSalario(valorAument);
            break;
          case "2":
            novaContaFuncionario.exibirInformacoes();
            break;
          case "3":
            sair = true;
            break;
          default:
            print('Valor impossivel');
            break;
        }
      }
    } catch (e) {
      print('Erro $e');
    }
  } else {
    print('Valor invalido!');
  }
  enter();
}


class Funcionarios{
  late int id;
 late String nome;
 late String cargo;
 late double _salario;


  get getSalario => _salario;

  set setSalario(double novoSalario) {
    _salario = novoSalario;
  }

  void AumentarSalario(double percentual) {
    setSalario = getSalario + (percentual / 100);
  }


  void exibirInformacoes() {
    print('Nome do Funcionario: $nome \nSalario Atual: $getSalario');
  }

}

class Empresa{
  late int id;
  late String funcionario;


get getFuncio => funcionario;


}