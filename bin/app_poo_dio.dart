// ignore_for_file: unnecessary_new

import 'package:app_poo_dio/classes/Pessoa.dart';
import 'package:app_poo_dio/classes/PessoaFisica.dart';
import 'package:app_poo_dio/classes/PessoaJuridica.dart';

void main(List<String> arguments) {
  //Instanciando pessoa
  var pessoa = new Pessoa("Acássio", "Rua 14");
  print("Nome: ${pessoa.getNome()} reside em: ${pessoa.getEndereco()}");

  //Instanciando pessoa fisica
  var pessoaFisica = new PessoaFisica("Junior", "Rua 15", "05636285665");
  print("Nome: ${pessoaFisica.getNome()}, Pessoa Física reside em: ${pessoaFisica.getEndereco()} CPF: ${pessoaFisica.getCpf()}");

  //Instanciando pessoa jurídica
  var pessoaJuridica = new PessoaJuridica("Correios Tartaruga", "Rua nunca chega", "07000707070");
  print("Nome: ${pessoaJuridica.getNome()}, Pessoa Jurídica reside em: ${pessoaJuridica.getEndereco()} CNPJ: ${pessoaJuridica.getCnpj()}");

  //Aqui nós temos o retorno com os valores ao invés de Instance of 'Pessoa'
  //Isso é devido ao override "sobrescrita" toString
  print(pessoa);
}
