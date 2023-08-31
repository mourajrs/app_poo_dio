import 'package:app_poo_dio/Service/notificacao_interface.dart';
import 'package:app_poo_dio/classes/pessoa__abstract.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando email para ${pessoa.getNome()}");
  }
}
