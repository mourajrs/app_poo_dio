import 'package:app_poo_dio/enum/tipo_notificacao.dart';

import 'pessoa__abstract.dart';

//usando conceito de herança através do extends classe pai que é Pessoa
class PessoaFisica extends Pessoa {
  String _cpf = "";

  //Usando palavra super para chamar construtor da classe pai na classe filha
  //assim conseguimos usar as propriedades da classe pai
  PessoaFisica(String nome, String endereco, String cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  //Aqui usamos o super.getNome() para obter dados, sempre para acessar o atributo
  //da classe pai é necessário usar super.nomeAtributo
  @override
  String toString() {
    return {"Nome": getNome(), "Endereço": getEndereco(), "CPF": _cpf, "Tipo Notificação": getTipoNotificacao()}.toString();
  }
}
