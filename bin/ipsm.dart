// import 'package:ipsm/api/body/farmacia/cancela-medicamento/farmarcia_cancela_medicamento.dart';
// import 'dart:convert';
import 'dart:io';

import 'package:ipsm/api/endpoint/autorizacao/cancela-procedimento/autorizacao_cancela_procedimento.dart';
import 'package:ipsm/api/endpoint/autorizacao/solicita-procedimento/autorizacao_solicita_procedimento.dart';
import 'package:ipsm/api/endpoint/autorizacao/status-autorizacao/autorizacao_status_autorizacao.dart';
import 'package:ipsm/api/endpoint/elegibilidade/verifica-elegibilidade/elegibilidade_verifica_elegibilidade.dart';
import 'package:ipsm/api/endpoint/farmacia/cancela-medicamento/farmarcia_cancela_medicamento.dart';
import 'package:ipsm/api/endpoint/farmacia/solicita-medicamento/farmacia_solicita_medicamento.dart';
import 'package:ipsm/gera_senha_ipsm.dart';

void main(List<String> arguments) {
  // senhaIpsm();
  autorizacaoCancelaProcedimento();
  autorizacaoSolicitaProcedimento();
  autorizacaoStatusAutorizacao();
  elegibilidadeVerificaElegibilidade();
  farmarciaCancelaMedicamento();
  farmaciaSolicitaMedicamento();
}

void farmaciaSolicitaMedicamento() async {
  late FarmaciaSolicitaMedicamento farmaciaSolicitaMedicamento;
  await File('lib/api/body/farmacia/solicita-medicamento/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    farmaciaSolicitaMedicamento =
        FarmaciaSolicitaMedicamento.fromJson(contents);
  });
  print(farmaciaSolicitaMedicamento.toString());
}

void elegibilidadeVerificaElegibilidade() async {
  late ElegibilidadeVerificaElegibilidade elegibilidadeVerificaElegibilidade;
  await File('lib/api/body/elegibilidade/verifica-elegibilidade/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    elegibilidadeVerificaElegibilidade =
        ElegibilidadeVerificaElegibilidade.fromJson(contents);
  });
  print(elegibilidadeVerificaElegibilidade.toString());
}

void autorizacaoStatusAutorizacao() async {
  late AutorizacaoStatusAutorizacao autorizacaoStatusAutorizacao;
  await File('lib/api/body/autorizacao/status-autorizacao/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    autorizacaoStatusAutorizacao =
        AutorizacaoStatusAutorizacao.fromJson(contents);
  });
  print(autorizacaoStatusAutorizacao.toString());
}

void autorizacaoSolicitaProcedimento() async {
  late AutorizacaoSolicitaProcedimento autorizacaoSolicitaProcedimento;
  await File('lib/api/body/autorizacao/solicita-procedimento/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    autorizacaoSolicitaProcedimento =
        AutorizacaoSolicitaProcedimento.fromJson(contents);
  });
  print(autorizacaoSolicitaProcedimento.toString());
}

void farmarciaCancelaMedicamento() async {
  late FarmarciaCancelaMedicamento farmarciaCancelaMedicamento;
  await File('lib/api/body/farmacia/cancela-medicamento/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    farmarciaCancelaMedicamento =
        FarmarciaCancelaMedicamento.fromJson(contents);
  });
  print(farmarciaCancelaMedicamento.cancelaPedidoMedicamento.usuario);
  print(farmarciaCancelaMedicamento.toString());
}

void autorizacaoCancelaProcedimento() async {
  late AutorizacaoCancelaProcedimento autorizacaoCancelaProcedimento;
  await File('lib/api/body/autorizacao/cancela-procedimento/body.json')
      .readAsString()
      .then((String contents) async {
    // var jsonData = jsonDecode(contents);
    autorizacaoCancelaProcedimento =
        AutorizacaoCancelaProcedimento.fromJson(contents);
  });
  print(autorizacaoCancelaProcedimento.toString());
}

void senhaIpsm() {
  var geraSenhaIPSM =
      GeraSenhaIPSM(textoOriginal: 'INTEGRACAO2021', chave: 7907);
  print(geraSenhaIPSM.encriptar());
  print(geraSenhaIPSM.textoCifradoHex());
}
