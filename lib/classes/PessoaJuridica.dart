import 'Pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  PessoaJuridica(String nome, String endereco, String cnpj) : super(nome, endereco) {
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
    return {"Nome": super.getNome(), "Endereço": super.getEndereco(), "CNPJ": _cnpj}.toString();
  }
}
