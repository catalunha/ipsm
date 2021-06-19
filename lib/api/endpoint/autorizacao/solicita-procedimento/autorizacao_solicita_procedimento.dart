import 'dart:convert';
import 'package:collection/collection.dart';

class AutorizacaoSolicitaProcedimento {
  final PrestadorParaOperadora prestadorParaOperadora;
  final Cabecalho cabecalho;
  AutorizacaoSolicitaProcedimento({
    required this.prestadorParaOperadora,
    required this.cabecalho,
  });

  AutorizacaoSolicitaProcedimento copyWith({
    PrestadorParaOperadora? prestadorParaOperadora,
    Cabecalho? cabecalho,
  }) {
    return AutorizacaoSolicitaProcedimento(
      prestadorParaOperadora:
          prestadorParaOperadora ?? this.prestadorParaOperadora,
      cabecalho: cabecalho ?? this.cabecalho,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'prestadorParaOperadora': prestadorParaOperadora.toMap(),
      'cabecalho': cabecalho.toMap(),
    };
  }

  factory AutorizacaoSolicitaProcedimento.fromMap(Map<String, dynamic> map) {
    return AutorizacaoSolicitaProcedimento(
      prestadorParaOperadora:
          PrestadorParaOperadora.fromMap(map['prestadorParaOperadora']),
      cabecalho: Cabecalho.fromMap(map['cabecalho']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AutorizacaoSolicitaProcedimento.fromJson(String source) =>
      AutorizacaoSolicitaProcedimento.fromMap(json.decode(source));

  @override
  String toString() =>
      'AutorizacaoSolicitaProcedimento(prestadorParaOperadora: $prestadorParaOperadora, cabecalho: $cabecalho)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutorizacaoSolicitaProcedimento &&
        other.prestadorParaOperadora == prestadorParaOperadora &&
        other.cabecalho == cabecalho;
  }

  @override
  int get hashCode => prestadorParaOperadora.hashCode ^ cabecalho.hashCode;
}

class PrestadorParaOperadora {
  final SolicitacaoProcedimento solicitacaoProcedimento;
  PrestadorParaOperadora({
    required this.solicitacaoProcedimento,
  });

  PrestadorParaOperadora copyWith({
    SolicitacaoProcedimento? solicitacaoProcedimento,
  }) {
    return PrestadorParaOperadora(
      solicitacaoProcedimento:
          solicitacaoProcedimento ?? this.solicitacaoProcedimento,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'solicitacaoProcedimento': solicitacaoProcedimento.toMap(),
    };
  }

  factory PrestadorParaOperadora.fromMap(Map<String, dynamic> map) {
    return PrestadorParaOperadora(
      solicitacaoProcedimento:
          SolicitacaoProcedimento.fromMap(map['solicitacaoProcedimento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PrestadorParaOperadora.fromJson(String source) =>
      PrestadorParaOperadora.fromMap(json.decode(source));

  @override
  String toString() =>
      'PrestadorParaOperadora(solicitacaoProcedimento: $solicitacaoProcedimento)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PrestadorParaOperadora &&
        other.solicitacaoProcedimento == solicitacaoProcedimento;
  }

  @override
  int get hashCode => solicitacaoProcedimento.hashCode;
}

class SolicitacaoProcedimento {
  final SolicitacaoSPSADT solicitacaoSPSADT;
  SolicitacaoProcedimento({
    required this.solicitacaoSPSADT,
  });

  SolicitacaoProcedimento copyWith({
    SolicitacaoSPSADT? solicitacaoSPSADT,
  }) {
    return SolicitacaoProcedimento(
      solicitacaoSPSADT: solicitacaoSPSADT ?? this.solicitacaoSPSADT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'solicitacaoSPSADT': solicitacaoSPSADT.toMap(),
    };
  }

  factory SolicitacaoProcedimento.fromMap(Map<String, dynamic> map) {
    return SolicitacaoProcedimento(
      solicitacaoSPSADT: SolicitacaoSPSADT.fromMap(map['solicitacaoSPSADT']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SolicitacaoProcedimento.fromJson(String source) =>
      SolicitacaoProcedimento.fromMap(json.decode(source));

  @override
  String toString() =>
      'SolicitacaoProcedimento(solicitacaoSPSADT: $solicitacaoSPSADT)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SolicitacaoProcedimento &&
        other.solicitacaoSPSADT == solicitacaoSPSADT;
  }

  @override
  int get hashCode => solicitacaoSPSADT.hashCode;
}

class SolicitacaoSPSADT {
  final int numeroGuiaPrincipal;
  final String dataSolicitacao;
  final int caraterAtendimento;
  final DadosBeneficiario dadosBeneficiario;
  final List<ProcedimentosSolicitado> procedimentosSolicitados;
  final String indicacaoClinica;
  final DadosSolicitante dadosSolicitante;
  final DadosExecutante dadosExecutante;
  final CabecalhoSolicitacao cabecalhoSolicitacao;
  SolicitacaoSPSADT({
    required this.numeroGuiaPrincipal,
    required this.dataSolicitacao,
    required this.caraterAtendimento,
    required this.dadosBeneficiario,
    required this.procedimentosSolicitados,
    required this.indicacaoClinica,
    required this.dadosSolicitante,
    required this.dadosExecutante,
    required this.cabecalhoSolicitacao,
  });

  SolicitacaoSPSADT copyWith({
    int? numeroGuiaPrincipal,
    String? dataSolicitacao,
    int? caraterAtendimento,
    DadosBeneficiario? dadosBeneficiario,
    List<ProcedimentosSolicitado>? procedimentosSolicitados,
    String? indicacaoClinica,
    DadosSolicitante? dadosSolicitante,
    DadosExecutante? dadosExecutante,
    CabecalhoSolicitacao? cabecalhoSolicitacao,
  }) {
    return SolicitacaoSPSADT(
      numeroGuiaPrincipal: numeroGuiaPrincipal ?? this.numeroGuiaPrincipal,
      dataSolicitacao: dataSolicitacao ?? this.dataSolicitacao,
      caraterAtendimento: caraterAtendimento ?? this.caraterAtendimento,
      dadosBeneficiario: dadosBeneficiario ?? this.dadosBeneficiario,
      procedimentosSolicitados:
          procedimentosSolicitados ?? this.procedimentosSolicitados,
      indicacaoClinica: indicacaoClinica ?? this.indicacaoClinica,
      dadosSolicitante: dadosSolicitante ?? this.dadosSolicitante,
      dadosExecutante: dadosExecutante ?? this.dadosExecutante,
      cabecalhoSolicitacao: cabecalhoSolicitacao ?? this.cabecalhoSolicitacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'numeroGuiaPrincipal': numeroGuiaPrincipal,
      'dataSolicitacao': dataSolicitacao,
      'caraterAtendimento': caraterAtendimento,
      'dadosBeneficiario': dadosBeneficiario.toMap(),
      'procedimentosSolicitados':
          procedimentosSolicitados.map((x) => x.toMap()).toList(),
      'indicacaoClinica': indicacaoClinica,
      'dadosSolicitante': dadosSolicitante.toMap(),
      'dadosExecutante': dadosExecutante.toMap(),
      'cabecalhoSolicitacao': cabecalhoSolicitacao.toMap(),
    };
  }

  factory SolicitacaoSPSADT.fromMap(Map<String, dynamic> map) {
    return SolicitacaoSPSADT(
      numeroGuiaPrincipal: map['numeroGuiaPrincipal']?.toInt(),
      dataSolicitacao: map['dataSolicitacao'],
      caraterAtendimento: map['caraterAtendimento']?.toInt(),
      dadosBeneficiario: DadosBeneficiario.fromMap(map['dadosBeneficiario']),
      procedimentosSolicitados: List<ProcedimentosSolicitado>.from(
          map['procedimentosSolicitados']
              ?.map((x) => ProcedimentosSolicitado.fromMap(x))),
      indicacaoClinica: map['indicacaoClinica'],
      dadosSolicitante: DadosSolicitante.fromMap(map['dadosSolicitante']),
      dadosExecutante: DadosExecutante.fromMap(map['dadosExecutante']),
      cabecalhoSolicitacao:
          CabecalhoSolicitacao.fromMap(map['cabecalhoSolicitacao']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SolicitacaoSPSADT.fromJson(String source) =>
      SolicitacaoSPSADT.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SolicitacaoSPSADT(numeroGuiaPrincipal: $numeroGuiaPrincipal, dataSolicitacao: $dataSolicitacao, caraterAtendimento: $caraterAtendimento, dadosBeneficiario: $dadosBeneficiario, procedimentosSolicitados: $procedimentosSolicitados, indicacaoClinica: $indicacaoClinica, dadosSolicitante: $dadosSolicitante, dadosExecutante: $dadosExecutante, cabecalhoSolicitacao: $cabecalhoSolicitacao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is SolicitacaoSPSADT &&
        other.numeroGuiaPrincipal == numeroGuiaPrincipal &&
        other.dataSolicitacao == dataSolicitacao &&
        other.caraterAtendimento == caraterAtendimento &&
        other.dadosBeneficiario == dadosBeneficiario &&
        listEquals(other.procedimentosSolicitados, procedimentosSolicitados) &&
        other.indicacaoClinica == indicacaoClinica &&
        other.dadosSolicitante == dadosSolicitante &&
        other.dadosExecutante == dadosExecutante &&
        other.cabecalhoSolicitacao == cabecalhoSolicitacao;
  }

  @override
  int get hashCode {
    return numeroGuiaPrincipal.hashCode ^
        dataSolicitacao.hashCode ^
        caraterAtendimento.hashCode ^
        dadosBeneficiario.hashCode ^
        procedimentosSolicitados.hashCode ^
        indicacaoClinica.hashCode ^
        dadosSolicitante.hashCode ^
        dadosExecutante.hashCode ^
        cabecalhoSolicitacao.hashCode;
  }
}

class DadosBeneficiario {
  final String nomeBeneficiario;
  final int numeroCarteira;
  final String atendimentoRN;
  final int identificadorBeneficiario;
  final int numeroCNS;
  DadosBeneficiario({
    required this.nomeBeneficiario,
    required this.numeroCarteira,
    required this.atendimentoRN,
    required this.identificadorBeneficiario,
    required this.numeroCNS,
  });

  DadosBeneficiario copyWith({
    String? nomeBeneficiario,
    int? numeroCarteira,
    String? atendimentoRN,
    int? identificadorBeneficiario,
    int? numeroCNS,
  }) {
    return DadosBeneficiario(
      nomeBeneficiario: nomeBeneficiario ?? this.nomeBeneficiario,
      numeroCarteira: numeroCarteira ?? this.numeroCarteira,
      atendimentoRN: atendimentoRN ?? this.atendimentoRN,
      identificadorBeneficiario:
          identificadorBeneficiario ?? this.identificadorBeneficiario,
      numeroCNS: numeroCNS ?? this.numeroCNS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeBeneficiario': nomeBeneficiario,
      'numeroCarteira': numeroCarteira,
      'atendimentoRN': atendimentoRN,
      'identificadorBeneficiario': identificadorBeneficiario,
      'numeroCNS': numeroCNS,
    };
  }

  factory DadosBeneficiario.fromMap(Map<String, dynamic> map) {
    return DadosBeneficiario(
      nomeBeneficiario: map['nomeBeneficiario'],
      numeroCarteira: map['numeroCarteira']?.toInt(),
      atendimentoRN: map['atendimentoRN'],
      identificadorBeneficiario: map['identificadorBeneficiario']?.toInt(),
      numeroCNS: map['numeroCNS']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosBeneficiario.fromJson(String source) =>
      DadosBeneficiario.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DadosBeneficiario(nomeBeneficiario: $nomeBeneficiario, numeroCarteira: $numeroCarteira, atendimentoRN: $atendimentoRN, identificadorBeneficiario: $identificadorBeneficiario, numeroCNS: $numeroCNS)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosBeneficiario &&
        other.nomeBeneficiario == nomeBeneficiario &&
        other.numeroCarteira == numeroCarteira &&
        other.atendimentoRN == atendimentoRN &&
        other.identificadorBeneficiario == identificadorBeneficiario &&
        other.numeroCNS == numeroCNS;
  }

  @override
  int get hashCode {
    return nomeBeneficiario.hashCode ^
        numeroCarteira.hashCode ^
        atendimentoRN.hashCode ^
        identificadorBeneficiario.hashCode ^
        numeroCNS.hashCode;
  }
}

class ProcedimentosSolicitado {
  final Procedimento procedimento;
  final int quantidadeSolicitada;
  ProcedimentosSolicitado({
    required this.procedimento,
    required this.quantidadeSolicitada,
  });

  ProcedimentosSolicitado copyWith({
    Procedimento? procedimento,
    int? quantidadeSolicitada,
  }) {
    return ProcedimentosSolicitado(
      procedimento: procedimento ?? this.procedimento,
      quantidadeSolicitada: quantidadeSolicitada ?? this.quantidadeSolicitada,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'procedimento': procedimento.toMap(),
      'quantidadeSolicitada': quantidadeSolicitada,
    };
  }

  factory ProcedimentosSolicitado.fromMap(Map<String, dynamic> map) {
    return ProcedimentosSolicitado(
      procedimento: Procedimento.fromMap(map['procedimento']),
      quantidadeSolicitada: map['quantidadeSolicitada']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProcedimentosSolicitado.fromJson(String source) =>
      ProcedimentosSolicitado.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProcedimentosSolicitado(procedimento: $procedimento, quantidadeSolicitada: $quantidadeSolicitada)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProcedimentosSolicitado &&
        other.procedimento == procedimento &&
        other.quantidadeSolicitada == quantidadeSolicitada;
  }

  @override
  int get hashCode => procedimento.hashCode ^ quantidadeSolicitada.hashCode;
}

class Procedimento {
  final String descricaoProcedimento;
  final int codigoProcedimento;
  final int codigoTabela;
  Procedimento({
    required this.descricaoProcedimento,
    required this.codigoProcedimento,
    required this.codigoTabela,
  });

  Procedimento copyWith({
    String? descricaoProcedimento,
    int? codigoProcedimento,
    int? codigoTabela,
  }) {
    return Procedimento(
      descricaoProcedimento:
          descricaoProcedimento ?? this.descricaoProcedimento,
      codigoProcedimento: codigoProcedimento ?? this.codigoProcedimento,
      codigoTabela: codigoTabela ?? this.codigoTabela,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'descricaoProcedimento': descricaoProcedimento,
      'codigoProcedimento': codigoProcedimento,
      'codigoTabela': codigoTabela,
    };
  }

  factory Procedimento.fromMap(Map<String, dynamic> map) {
    return Procedimento(
      descricaoProcedimento: map['descricaoProcedimento'],
      codigoProcedimento: map['codigoProcedimento']?.toInt(),
      codigoTabela: map['codigoTabela']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Procedimento.fromJson(String source) =>
      Procedimento.fromMap(json.decode(source));

  @override
  String toString() =>
      'Procedimento(descricaoProcedimento: $descricaoProcedimento, codigoProcedimento: $codigoProcedimento, codigoTabela: $codigoTabela)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Procedimento &&
        other.descricaoProcedimento == descricaoProcedimento &&
        other.codigoProcedimento == codigoProcedimento &&
        other.codigoTabela == codigoTabela;
  }

  @override
  int get hashCode =>
      descricaoProcedimento.hashCode ^
      codigoProcedimento.hashCode ^
      codigoTabela.hashCode;
}

class DadosSolicitante {
  final ProfissionalSolicitante profissionalSolicitante;
  final ContratadoSolicitante contratadoSolicitante;
  DadosSolicitante({
    required this.profissionalSolicitante,
    required this.contratadoSolicitante,
  });

  DadosSolicitante copyWith({
    ProfissionalSolicitante? profissionalSolicitante,
    ContratadoSolicitante? contratadoSolicitante,
  }) {
    return DadosSolicitante(
      profissionalSolicitante:
          profissionalSolicitante ?? this.profissionalSolicitante,
      contratadoSolicitante:
          contratadoSolicitante ?? this.contratadoSolicitante,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'profissionalSolicitante': profissionalSolicitante.toMap(),
      'contratadoSolicitante': contratadoSolicitante.toMap(),
    };
  }

  factory DadosSolicitante.fromMap(Map<String, dynamic> map) {
    return DadosSolicitante(
      profissionalSolicitante:
          ProfissionalSolicitante.fromMap(map['profissionalSolicitante']),
      contratadoSolicitante:
          ContratadoSolicitante.fromMap(map['contratadoSolicitante']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosSolicitante.fromJson(String source) =>
      DadosSolicitante.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosSolicitante(profissionalSolicitante: $profissionalSolicitante, contratadoSolicitante: $contratadoSolicitante)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosSolicitante &&
        other.profissionalSolicitante == profissionalSolicitante &&
        other.contratadoSolicitante == contratadoSolicitante;
  }

  @override
  int get hashCode =>
      profissionalSolicitante.hashCode ^ contratadoSolicitante.hashCode;
}

class ProfissionalSolicitante {
  final int cbos;
  final String nomeProfissional;
  final String uf;
  final String conselhoProfissional;
  final int numeroConselhoProfissional;
  ProfissionalSolicitante({
    required this.cbos,
    required this.nomeProfissional,
    required this.uf,
    required this.conselhoProfissional,
    required this.numeroConselhoProfissional,
  });

  ProfissionalSolicitante copyWith({
    int? cbos,
    String? nomeProfissional,
    String? uf,
    String? conselhoProfissional,
    int? numeroConselhoProfissional,
  }) {
    return ProfissionalSolicitante(
      cbos: cbos ?? this.cbos,
      nomeProfissional: nomeProfissional ?? this.nomeProfissional,
      uf: uf ?? this.uf,
      conselhoProfissional: conselhoProfissional ?? this.conselhoProfissional,
      numeroConselhoProfissional:
          numeroConselhoProfissional ?? this.numeroConselhoProfissional,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cbos': cbos,
      'nomeProfissional': nomeProfissional,
      'uf': uf,
      'conselhoProfissional': conselhoProfissional,
      'numeroConselhoProfissional': numeroConselhoProfissional,
    };
  }

  factory ProfissionalSolicitante.fromMap(Map<String, dynamic> map) {
    return ProfissionalSolicitante(
      cbos: map['cbos']?.toInt(),
      nomeProfissional: map['nomeProfissional'],
      uf: map['uf'],
      conselhoProfissional: map['conselhoProfissional'],
      numeroConselhoProfissional: map['numeroConselhoProfissional']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfissionalSolicitante.fromJson(String source) =>
      ProfissionalSolicitante.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProfissionalSolicitante(cbos: $cbos, nomeProfissional: $nomeProfissional, uf: $uf, conselhoProfissional: $conselhoProfissional, numeroConselhoProfissional: $numeroConselhoProfissional)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfissionalSolicitante &&
        other.cbos == cbos &&
        other.nomeProfissional == nomeProfissional &&
        other.uf == uf &&
        other.conselhoProfissional == conselhoProfissional &&
        other.numeroConselhoProfissional == numeroConselhoProfissional;
  }

  @override
  int get hashCode {
    return cbos.hashCode ^
        nomeProfissional.hashCode ^
        uf.hashCode ^
        conselhoProfissional.hashCode ^
        numeroConselhoProfissional.hashCode;
  }
}

class ContratadoSolicitante {
  final int cpfContratado;
  final String nomeContratado;
  ContratadoSolicitante({
    required this.cpfContratado,
    required this.nomeContratado,
  });

  ContratadoSolicitante copyWith({
    int? cpfContratado,
    String? nomeContratado,
  }) {
    return ContratadoSolicitante(
      cpfContratado: cpfContratado ?? this.cpfContratado,
      nomeContratado: nomeContratado ?? this.nomeContratado,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cpfContratado': cpfContratado,
      'nomeContratado': nomeContratado,
    };
  }

  factory ContratadoSolicitante.fromMap(Map<String, dynamic> map) {
    return ContratadoSolicitante(
      cpfContratado: map['cpfContratado']?.toInt(),
      nomeContratado: map['nomeContratado'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContratadoSolicitante.fromJson(String source) =>
      ContratadoSolicitante.fromMap(json.decode(source));

  @override
  String toString() =>
      'ContratadoSolicitante(cpfContratado: $cpfContratado, nomeContratado: $nomeContratado)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContratadoSolicitante &&
        other.cpfContratado == cpfContratado &&
        other.nomeContratado == nomeContratado;
  }

  @override
  int get hashCode => cpfContratado.hashCode ^ nomeContratado.hashCode;
}

class DadosExecutante {
  final String nomeContratado;
  final int CNES;
  final int codigonaOperadora;
  DadosExecutante({
    required this.nomeContratado,
    required this.CNES,
    required this.codigonaOperadora,
  });

  DadosExecutante copyWith({
    String? nomeContratado,
    int? CNES,
    int? codigonaOperadora,
  }) {
    return DadosExecutante(
      nomeContratado: nomeContratado ?? this.nomeContratado,
      CNES: CNES ?? this.CNES,
      codigonaOperadora: codigonaOperadora ?? this.codigonaOperadora,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeContratado': nomeContratado,
      'CNES': CNES,
      'codigonaOperadora': codigonaOperadora,
    };
  }

  factory DadosExecutante.fromMap(Map<String, dynamic> map) {
    return DadosExecutante(
      nomeContratado: map['nomeContratado'],
      CNES: map['CNES']?.toInt(),
      codigonaOperadora: map['codigonaOperadora']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosExecutante.fromJson(String source) =>
      DadosExecutante.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosExecutante(nomeContratado: $nomeContratado, CNES: $CNES, codigonaOperadora: $codigonaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosExecutante &&
        other.nomeContratado == nomeContratado &&
        other.CNES == CNES &&
        other.codigonaOperadora == codigonaOperadora;
  }

  @override
  int get hashCode =>
      nomeContratado.hashCode ^ CNES.hashCode ^ codigonaOperadora.hashCode;
}

class CabecalhoSolicitacao {
  final String numeroGuiaPrestador;
  final int registroANS;
  CabecalhoSolicitacao({
    required this.numeroGuiaPrestador,
    required this.registroANS,
  });

  CabecalhoSolicitacao copyWith({
    String? numeroGuiaPrestador,
    int? registroANS,
  }) {
    return CabecalhoSolicitacao(
      numeroGuiaPrestador: numeroGuiaPrestador ?? this.numeroGuiaPrestador,
      registroANS: registroANS ?? this.registroANS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'numeroGuiaPrestador': numeroGuiaPrestador,
      'registroANS': registroANS,
    };
  }

  factory CabecalhoSolicitacao.fromMap(Map<String, dynamic> map) {
    return CabecalhoSolicitacao(
      numeroGuiaPrestador: map['numeroGuiaPrestador'],
      registroANS: map['registroANS']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CabecalhoSolicitacao.fromJson(String source) =>
      CabecalhoSolicitacao.fromMap(json.decode(source));

  @override
  String toString() =>
      'CabecalhoSolicitacao(numeroGuiaPrestador: $numeroGuiaPrestador, registroANS: $registroANS)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CabecalhoSolicitacao &&
        other.numeroGuiaPrestador == numeroGuiaPrestador &&
        other.registroANS == registroANS;
  }

  @override
  int get hashCode => numeroGuiaPrestador.hashCode ^ registroANS.hashCode;
}

class Cabecalho {
  final Origem origem;
  final Destino destino;
  final String versaoPadrao;
  final IdentificacaoTransacao identificacaoTransacao;
  Cabecalho({
    required this.origem,
    required this.destino,
    required this.versaoPadrao,
    required this.identificacaoTransacao,
  });

  Cabecalho copyWith({
    Origem? origem,
    Destino? destino,
    String? versaoPadrao,
    IdentificacaoTransacao? identificacaoTransacao,
  }) {
    return Cabecalho(
      origem: origem ?? this.origem,
      destino: destino ?? this.destino,
      versaoPadrao: versaoPadrao ?? this.versaoPadrao,
      identificacaoTransacao:
          identificacaoTransacao ?? this.identificacaoTransacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'origem': origem.toMap(),
      'destino': destino.toMap(),
      'versaoPadrao': versaoPadrao,
      'identificacaoTransacao': identificacaoTransacao.toMap(),
    };
  }

  factory Cabecalho.fromMap(Map<String, dynamic> map) {
    return Cabecalho(
      origem: Origem.fromMap(map['origem']),
      destino: Destino.fromMap(map['destino']),
      versaoPadrao: map['versaoPadrao'],
      identificacaoTransacao:
          IdentificacaoTransacao.fromMap(map['identificacaoTransacao']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cabecalho.fromJson(String source) =>
      Cabecalho.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cabecalho(origem: $origem, destino: $destino, versaoPadrao: $versaoPadrao, identificacaoTransacao: $identificacaoTransacao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cabecalho &&
        other.origem == origem &&
        other.destino == destino &&
        other.versaoPadrao == versaoPadrao &&
        other.identificacaoTransacao == identificacaoTransacao;
  }

  @override
  int get hashCode {
    return origem.hashCode ^
        destino.hashCode ^
        versaoPadrao.hashCode ^
        identificacaoTransacao.hashCode;
  }
}

class Origem {
  final IdentificacaoPrestador identificacaoPrestador;
  final int registroANS;
  Origem({
    required this.identificacaoPrestador,
    required this.registroANS,
  });

  Origem copyWith({
    IdentificacaoPrestador? identificacaoPrestador,
    int? registroANS,
  }) {
    return Origem(
      identificacaoPrestador:
          identificacaoPrestador ?? this.identificacaoPrestador,
      registroANS: registroANS ?? this.registroANS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoPrestador': identificacaoPrestador.toMap(),
      'registroANS': registroANS,
    };
  }

  factory Origem.fromMap(Map<String, dynamic> map) {
    return Origem(
      identificacaoPrestador:
          IdentificacaoPrestador.fromMap(map['identificacaoPrestador']),
      registroANS: map['registroANS']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Origem.fromJson(String source) => Origem.fromMap(json.decode(source));

  @override
  String toString() =>
      'Origem(identificacaoPrestador: $identificacaoPrestador, registroANS: $registroANS)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Origem &&
        other.identificacaoPrestador == identificacaoPrestador &&
        other.registroANS == registroANS;
  }

  @override
  int get hashCode => identificacaoPrestador.hashCode ^ registroANS.hashCode;
}

class IdentificacaoPrestador {
  final String codigoPrestadorNaOperadora;
  IdentificacaoPrestador({
    required this.codigoPrestadorNaOperadora,
  });

  IdentificacaoPrestador copyWith({
    String? codigoPrestadorNaOperadora,
  }) {
    return IdentificacaoPrestador(
      codigoPrestadorNaOperadora:
          codigoPrestadorNaOperadora ?? this.codigoPrestadorNaOperadora,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'codigoPrestadorNaOperadora': codigoPrestadorNaOperadora,
    };
  }

  factory IdentificacaoPrestador.fromMap(Map<String, dynamic> map) {
    return IdentificacaoPrestador(
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoPrestador.fromJson(String source) =>
      IdentificacaoPrestador.fromMap(json.decode(source));

  @override
  String toString() =>
      'IdentificacaoPrestador(codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoPrestador &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora;
  }

  @override
  int get hashCode => codigoPrestadorNaOperadora.hashCode;
}

class Destino {
  final IdentificacaoPrestador identificacaoPrestador;
  Destino({
    required this.identificacaoPrestador,
  });

  Destino copyWith({
    IdentificacaoPrestador? identificacaoPrestador,
  }) {
    return Destino(
      identificacaoPrestador:
          identificacaoPrestador ?? this.identificacaoPrestador,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoPrestador': identificacaoPrestador.toMap(),
    };
  }

  factory Destino.fromMap(Map<String, dynamic> map) {
    return Destino(
      identificacaoPrestador:
          IdentificacaoPrestador.fromMap(map['identificacaoPrestador']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Destino.fromJson(String source) =>
      Destino.fromMap(json.decode(source));

  @override
  String toString() =>
      'Destino(identificacaoPrestador: $identificacaoPrestador)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Destino &&
        other.identificacaoPrestador == identificacaoPrestador;
  }

  @override
  int get hashCode => identificacaoPrestador.hashCode;
}

class IdentificacaoTransacao {
  final String dataRegistroTransacao;
  final int sequencialTransacao;
  final String horaRegistroTransacao;
  final String tipoTransacao;
  IdentificacaoTransacao({
    required this.dataRegistroTransacao,
    required this.sequencialTransacao,
    required this.horaRegistroTransacao,
    required this.tipoTransacao,
  });

  IdentificacaoTransacao copyWith({
    String? dataRegistroTransacao,
    int? sequencialTransacao,
    String? horaRegistroTransacao,
    String? tipoTransacao,
  }) {
    return IdentificacaoTransacao(
      dataRegistroTransacao:
          dataRegistroTransacao ?? this.dataRegistroTransacao,
      sequencialTransacao: sequencialTransacao ?? this.sequencialTransacao,
      horaRegistroTransacao:
          horaRegistroTransacao ?? this.horaRegistroTransacao,
      tipoTransacao: tipoTransacao ?? this.tipoTransacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dataRegistroTransacao': dataRegistroTransacao,
      'sequencialTransacao': sequencialTransacao,
      'horaRegistroTransacao': horaRegistroTransacao,
      'tipoTransacao': tipoTransacao,
    };
  }

  factory IdentificacaoTransacao.fromMap(Map<String, dynamic> map) {
    return IdentificacaoTransacao(
      dataRegistroTransacao: map['dataRegistroTransacao'],
      sequencialTransacao: map['sequencialTransacao']?.toInt(),
      horaRegistroTransacao: map['horaRegistroTransacao'],
      tipoTransacao: map['tipoTransacao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoTransacao.fromJson(String source) =>
      IdentificacaoTransacao.fromMap(json.decode(source));

  @override
  String toString() {
    return 'IdentificacaoTransacao(dataRegistroTransacao: $dataRegistroTransacao, sequencialTransacao: $sequencialTransacao, horaRegistroTransacao: $horaRegistroTransacao, tipoTransacao: $tipoTransacao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoTransacao &&
        other.dataRegistroTransacao == dataRegistroTransacao &&
        other.sequencialTransacao == sequencialTransacao &&
        other.horaRegistroTransacao == horaRegistroTransacao &&
        other.tipoTransacao == tipoTransacao;
  }

  @override
  int get hashCode {
    return dataRegistroTransacao.hashCode ^
        sequencialTransacao.hashCode ^
        horaRegistroTransacao.hashCode ^
        tipoTransacao.hashCode;
  }
}
