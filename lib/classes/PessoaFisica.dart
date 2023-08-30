import 'Pessoa.dart';

//usando conceito de herança através do extends classe pai que é Pessoa
class PessoaFisica extends Pessoa {
  String _cpf = "";

  //Usando palavra super para chamar construtor da classe pai na classe filha
  //assim conseguimos usar as propriedades da classe pai
  PessoaFisica(String nome, String endereco, String cpf) : super(nome, endereco) {
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
    return {"Nome": super.getNome(), "Endereço": super.getEndereco(), "CPF": _cpf}.toString();
  }
}
