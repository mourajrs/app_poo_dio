import 'package:app_poo_dio/Service/impl/notificacao_email.dart';
import 'package:app_poo_dio/Service/impl/notificacao_push_notification.dart';
import 'package:app_poo_dio/Service/impl/notificacao_sms.dart';
import 'package:app_poo_dio/Service/notificacao_interface.dart';
import 'package:app_poo_dio/classes/pessoa__abstract.dart';
import 'package:app_poo_dio/enum/tipo_notificacao.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
