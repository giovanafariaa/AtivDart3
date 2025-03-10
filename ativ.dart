import 'dart:io';

import 'package:ativ/ativ.dart' as ativ;

void main(List<String> arguments) {
   void enter() {
    stdin.readLineSync();
    Empresa emp = Empresa();
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
            'Oque você deseja fazer? \n 1-Depositar \n 2-Exibir info \n 3-Sair \n 4-Adicionar funcionario \n 5-Remover funcionario');
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
  late final int _id;
 late final String _nome;
 late final String _cargo;
 late final double _salario;


  get getSalario => _salario;
  get getNome => _nome;
  get getId => _id;
  get getCarg0 => _cargo;

set  setNome (String nome) {
_nome = nome; 
}  
set  setCargo (String cargo) { 
_cargo = cargo; 
}


  set setSalario(double novoSalario) {
    _salario = novoSalario;
  }

  void AumentarSalario(double percentual) {
    setSalario = getSalario + (percentual / 100);
  }


  void exibirInformacoes() {
    print('Nome do Funcionario: $getNome \nCargo:$getCarg0 \nSalario Atual: $getSalario');
  }

}

class Empresa{
  late int id;
  late String funcionario;

List<String> lista = <String>[];
String? nome;

void adicionarFuncionario() {
 Funcionarios f = Funcionarios();
 print('Nome do funcionario:');
String? name = stdin.readLineSync()?.toUpperCase() ?? "";
f.setNome = name;
lista.add(name);
print( 'Usuario adicionado com o id: ${lista.length - 1}');
print( 'Cargo do funcionario');
String? _cargo = stdin.readLineSync() ?? "";
f.setCargo = _cargo;
print('Adicione o salario:');
String? _salario = stdin.readLineSync() ?? "";
f.setSalario = _salario;
}
}

