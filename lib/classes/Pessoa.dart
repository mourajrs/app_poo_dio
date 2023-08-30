class Pessoa {
  //Propriedades
  //Variáveis com underline no começo _variavel são private
  String _nome = "";
  String _endereco = "";

  //Metodo construtor que é o primeiro a ser inicializado junto a classe
  //nele garantimos que as propriedades sejam informadas
  //assim que criar uma Pessoa
  Pessoa(String nome, String endereco) {
    _nome = nome;
    _endereco = endereco;
  }

  //métodos para evitar acesso direto a propriedade para alterar valor
  void setNome(String nome) {
    _nome = nome;
  }

  //métodos para evitar acesso direto a propriedade para alterar valor
  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  //métodos para resgatar o valor da propriedade pois ela esta como private
  String getNome() {
    return _nome; //Aqui podemos fazer validações ou tratativas
  }

  //métodos para resgatar o valor da propriedade pois ela esta como private
  String getEndereco() {
    return _endereco.toUpperCase(); //Aqui podemos fazer validações ou tratativas
  }

  //sobrescrevendo algo que esteja em outra classe,
  //no caso estamos sobrescrevendo a toString() da classe objects
  //isso é mais um conceito de polimorfismo
  @override
  String toString() {
    return {"Nome": _nome, "Endereco": _endereco}.toString();
  }
}
