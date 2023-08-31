import 'package:app_poo_dio/enum/tipo_notificacao.dart';

import 'pessoa__abstract.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  PessoaJuridica(String nome, String endereco, String cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  @override
  String toString() {
    return {"Nome": getNome(), "Endereço": getEndereco(), "CNPJ": _cnpj, "Notificacao": getTipoNotificacao()}.toString();
  }
}
