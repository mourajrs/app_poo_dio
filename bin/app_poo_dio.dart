import 'package:app_poo_dio/Service/enviar_notificacao.dart';
import 'package:app_poo_dio/classes/pessoa_fisica.dart';
import 'package:app_poo_dio/classes/pessoa_juridica.dart';
import 'package:app_poo_dio/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  //Instanciando pessoa fisica
  var pessoaFisica1 = PessoaFisica("Junior", "Rua 15", "05636285665");
  print(pessoaFisica1);

  //Instanciando pessoa jurídica
  var pessoaJuridica1 = PessoaJuridica("Correios Tartaruga", "Rua nunca chega", "07000707070", tipoNotificacao: TipoNotificacao.SMS);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);

  //Aqui nós temos o retorno com os valores ao invés de Instance of 'Pessoa'
  //Isso é devido ao override "sobrescrita" toString
  // print(pessoaJuridica1);
  // print(pessoaFisica1);
}
