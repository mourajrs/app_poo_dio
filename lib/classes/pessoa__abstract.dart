//classe abstrata não pode ser instanciada, serve apenas como modelo
import 'package:app_poo_dio/enum/tipo_notificacao.dart';

abstract class Pessoa {
  //Propriedades
  //Variáveis com underline no começo _variavel são private
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  //Metodo construtor que é o primeiro a ser inicializado junto a classe
  //nele garantimos que as propriedades sejam informadas
  //assim que criar uma Pessoa
  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao; // parametro opcional
  }

  //métodos para evitar acesso direto a propriedade para alterar valor
  void setNome(String nome) {
    _nome = nome;
  }

  //métodos para resgatar o valor da propriedade pois ela esta como private
  String getNome() {
    return _nome; //Aqui podemos fazer validações ou tratativas
  }

  //métodos para evitar acesso direto a propriedade para alterar valor
  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  //métodos para resgatar o valor da propriedade pois ela esta como private
  String getEndereco() {
    return _endereco.toUpperCase(); //Aqui podemos fazer validações ou tratativas
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular(String celular) {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken(String token) {
    return _token;
  }

  //sobrescrevendo algo que esteja em outra classe,
  //no caso estamos sobrescrevendo a toString() da classe objects
  //isso é mais um conceito de polimorfismo
  @override
  String toString() => {"Nome": _nome, "Endereco": _endereco, "TipoNotificacao": _tipoNotificacao}.toString();
}
