import 'dart:convert';
import 'package:collection/collection.dart';

class FarmaciaSolicitaMedicamento {
  final SolicitacaoMedicamento solicitacaoMedicamento;
  FarmaciaSolicitaMedicamento({
    required this.solicitacaoMedicamento,
  });

  FarmaciaSolicitaMedicamento copyWith({
    SolicitacaoMedicamento? solicitacaoMedicamento,
  }) {
    return FarmaciaSolicitaMedicamento(
      solicitacaoMedicamento:
          solicitacaoMedicamento ?? this.solicitacaoMedicamento,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'solicitacaoMedicamento': solicitacaoMedicamento.toMap(),
    };
  }

  factory FarmaciaSolicitaMedicamento.fromMap(Map<String, dynamic> map) {
    return FarmaciaSolicitaMedicamento(
      solicitacaoMedicamento:
          SolicitacaoMedicamento.fromMap(map['solicitacaoMedicamento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FarmaciaSolicitaMedicamento.fromJson(String source) =>
      FarmaciaSolicitaMedicamento.fromMap(json.decode(source));

  @override
  String toString() =>
      'FarmaciaSolicitaMedicamento(solicitacaoMedicamento: $solicitacaoMedicamento)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FarmaciaSolicitaMedicamento &&
        other.solicitacaoMedicamento == solicitacaoMedicamento;
  }

  @override
  int get hashCode => solicitacaoMedicamento.hashCode;
}

class SolicitacaoMedicamento {
  final List<ProcedimentosSolicitado> procedimentosSolicitados;
  final DadosBeneficiario dadosBeneficiario;
  final String dataSolicitacao;
  final int registroANVISA;
  final int numeroGuiaPrestador;
  final DadosSolicitante dadosSolicitante;
  final DadosExecutante dadosExecutante;
  SolicitacaoMedicamento({
    required this.procedimentosSolicitados,
    required this.dadosBeneficiario,
    required this.dataSolicitacao,
    required this.registroANVISA,
    required this.numeroGuiaPrestador,
    required this.dadosSolicitante,
    required this.dadosExecutante,
  });

  SolicitacaoMedicamento copyWith({
    List<ProcedimentosSolicitado>? procedimentosSolicitados,
    DadosBeneficiario? dadosBeneficiario,
    String? dataSolicitacao,
    int? registroANVISA,
    int? numeroGuiaPrestador,
    DadosSolicitante? dadosSolicitante,
    DadosExecutante? dadosExecutante,
  }) {
    return SolicitacaoMedicamento(
      procedimentosSolicitados:
          procedimentosSolicitados ?? this.procedimentosSolicitados,
      dadosBeneficiario: dadosBeneficiario ?? this.dadosBeneficiario,
      dataSolicitacao: dataSolicitacao ?? this.dataSolicitacao,
      registroANVISA: registroANVISA ?? this.registroANVISA,
      numeroGuiaPrestador: numeroGuiaPrestador ?? this.numeroGuiaPrestador,
      dadosSolicitante: dadosSolicitante ?? this.dadosSolicitante,
      dadosExecutante: dadosExecutante ?? this.dadosExecutante,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'procedimentosSolicitados':
          procedimentosSolicitados.map((x) => x.toMap()).toList(),
      'dadosBeneficiario': dadosBeneficiario.toMap(),
      'dataSolicitacao': dataSolicitacao,
      'registroANVISA': registroANVISA,
      'numeroGuiaPrestador': numeroGuiaPrestador,
      'dadosSolicitante': dadosSolicitante.toMap(),
      'dadosExecutante': dadosExecutante.toMap(),
    };
  }

  factory SolicitacaoMedicamento.fromMap(Map<String, dynamic> map) {
    return SolicitacaoMedicamento(
      procedimentosSolicitados: List<ProcedimentosSolicitado>.from(
          map['procedimentosSolicitados']
              ?.map((x) => ProcedimentosSolicitado.fromMap(x))),
      dadosBeneficiario: DadosBeneficiario.fromMap(map['dadosBeneficiario']),
      dataSolicitacao: map['dataSolicitacao'],
      registroANVISA: map['registroANVISA']?.toInt(),
      numeroGuiaPrestador: map['numeroGuiaPrestador']?.toInt(),
      dadosSolicitante: DadosSolicitante.fromMap(map['dadosSolicitante']),
      dadosExecutante: DadosExecutante.fromMap(map['dadosExecutante']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SolicitacaoMedicamento.fromJson(String source) =>
      SolicitacaoMedicamento.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SolicitacaoMedicamento(procedimentosSolicitados: $procedimentosSolicitados, dadosBeneficiario: $dadosBeneficiario, dataSolicitacao: $dataSolicitacao, registroANVISA: $registroANVISA, numeroGuiaPrestador: $numeroGuiaPrestador, dadosSolicitante: $dadosSolicitante, dadosExecutante: $dadosExecutante)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is SolicitacaoMedicamento &&
        listEquals(other.procedimentosSolicitados, procedimentosSolicitados) &&
        other.dadosBeneficiario == dadosBeneficiario &&
        other.dataSolicitacao == dataSolicitacao &&
        other.registroANVISA == registroANVISA &&
        other.numeroGuiaPrestador == numeroGuiaPrestador &&
        other.dadosSolicitante == dadosSolicitante &&
        other.dadosExecutante == dadosExecutante;
  }

  @override
  int get hashCode {
    return procedimentosSolicitados.hashCode ^
        dadosBeneficiario.hashCode ^
        dataSolicitacao.hashCode ^
        registroANVISA.hashCode ^
        numeroGuiaPrestador.hashCode ^
        dadosSolicitante.hashCode ^
        dadosExecutante.hashCode;
  }
}

class ProcedimentosSolicitado {
  final Procedimento procedimento;
  final String valorSolicitado;
  final int quantidadeSolicitada;
  ProcedimentosSolicitado({
    required this.procedimento,
    required this.valorSolicitado,
    required this.quantidadeSolicitada,
  });

  ProcedimentosSolicitado copyWith({
    Procedimento? procedimento,
    String? valorSolicitado,
    int? quantidadeSolicitada,
  }) {
    return ProcedimentosSolicitado(
      procedimento: procedimento ?? this.procedimento,
      valorSolicitado: valorSolicitado ?? this.valorSolicitado,
      quantidadeSolicitada: quantidadeSolicitada ?? this.quantidadeSolicitada,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'procedimento': procedimento.toMap(),
      'valorSolicitado': valorSolicitado,
      'quantidadeSolicitada': quantidadeSolicitada,
    };
  }

  factory ProcedimentosSolicitado.fromMap(Map<String, dynamic> map) {
    return ProcedimentosSolicitado(
      procedimento: Procedimento.fromMap(map['procedimento']),
      valorSolicitado: map['valorSolicitado'],
      quantidadeSolicitada: map['quantidadeSolicitada']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProcedimentosSolicitado.fromJson(String source) =>
      ProcedimentosSolicitado.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProcedimentosSolicitado(procedimento: $procedimento, valorSolicitado: $valorSolicitado, quantidadeSolicitada: $quantidadeSolicitada)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProcedimentosSolicitado &&
        other.procedimento == procedimento &&
        other.valorSolicitado == valorSolicitado &&
        other.quantidadeSolicitada == quantidadeSolicitada;
  }

  @override
  int get hashCode =>
      procedimento.hashCode ^
      valorSolicitado.hashCode ^
      quantidadeSolicitada.hashCode;
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

class DadosBeneficiario {
  final String atendimentoRN;
  final String nomeBeneficiario;
  final int numeroCarteira;
  DadosBeneficiario({
    required this.atendimentoRN,
    required this.nomeBeneficiario,
    required this.numeroCarteira,
  });

  DadosBeneficiario copyWith({
    String? atendimentoRN,
    String? nomeBeneficiario,
    int? numeroCarteira,
  }) {
    return DadosBeneficiario(
      atendimentoRN: atendimentoRN ?? this.atendimentoRN,
      nomeBeneficiario: nomeBeneficiario ?? this.nomeBeneficiario,
      numeroCarteira: numeroCarteira ?? this.numeroCarteira,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'atendimentoRN': atendimentoRN,
      'nomeBeneficiario': nomeBeneficiario,
      'numeroCarteira': numeroCarteira,
    };
  }

  factory DadosBeneficiario.fromMap(Map<String, dynamic> map) {
    return DadosBeneficiario(
      atendimentoRN: map['atendimentoRN'],
      nomeBeneficiario: map['nomeBeneficiario'],
      numeroCarteira: map['numeroCarteira']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosBeneficiario.fromJson(String source) =>
      DadosBeneficiario.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosBeneficiario(atendimentoRN: $atendimentoRN, nomeBeneficiario: $nomeBeneficiario, numeroCarteira: $numeroCarteira)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosBeneficiario &&
        other.atendimentoRN == atendimentoRN &&
        other.nomeBeneficiario == nomeBeneficiario &&
        other.numeroCarteira == numeroCarteira;
  }

  @override
  int get hashCode =>
      atendimentoRN.hashCode ^
      nomeBeneficiario.hashCode ^
      numeroCarteira.hashCode;
}

class DadosSolicitante {
  final ProfissionalSolicitante profissionalSolicitante;
  DadosSolicitante({
    required this.profissionalSolicitante,
  });

  DadosSolicitante copyWith({
    ProfissionalSolicitante? profissionalSolicitante,
  }) {
    return DadosSolicitante(
      profissionalSolicitante:
          profissionalSolicitante ?? this.profissionalSolicitante,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'profissionalSolicitante': profissionalSolicitante.toMap(),
    };
  }

  factory DadosSolicitante.fromMap(Map<String, dynamic> map) {
    return DadosSolicitante(
      profissionalSolicitante:
          ProfissionalSolicitante.fromMap(map['profissionalSolicitante']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosSolicitante.fromJson(String source) =>
      DadosSolicitante.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosSolicitante(profissionalSolicitante: $profissionalSolicitante)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosSolicitante &&
        other.profissionalSolicitante == profissionalSolicitante;
  }

  @override
  int get hashCode => profissionalSolicitante.hashCode;
}

class ProfissionalSolicitante {
  final String conselhoProfissional;
  final String nomeProfissional;
  final String uf;
  final int codigoIbgeMunicipio;
  final int cbos;
  final int numeroConselhoProfissional;
  ProfissionalSolicitante({
    required this.conselhoProfissional,
    required this.nomeProfissional,
    required this.uf,
    required this.codigoIbgeMunicipio,
    required this.cbos,
    required this.numeroConselhoProfissional,
  });

  ProfissionalSolicitante copyWith({
    String? conselhoProfissional,
    String? nomeProfissional,
    String? uf,
    int? codigoIbgeMunicipio,
    int? cbos,
    int? numeroConselhoProfissional,
  }) {
    return ProfissionalSolicitante(
      conselhoProfissional: conselhoProfissional ?? this.conselhoProfissional,
      nomeProfissional: nomeProfissional ?? this.nomeProfissional,
      uf: uf ?? this.uf,
      codigoIbgeMunicipio: codigoIbgeMunicipio ?? this.codigoIbgeMunicipio,
      cbos: cbos ?? this.cbos,
      numeroConselhoProfissional:
          numeroConselhoProfissional ?? this.numeroConselhoProfissional,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'conselhoProfissional': conselhoProfissional,
      'nomeProfissional': nomeProfissional,
      'uf': uf,
      'codigoIbgeMunicipio': codigoIbgeMunicipio,
      'cbos': cbos,
      'numeroConselhoProfissional': numeroConselhoProfissional,
    };
  }

  factory ProfissionalSolicitante.fromMap(Map<String, dynamic> map) {
    return ProfissionalSolicitante(
      conselhoProfissional: map['conselhoProfissional'],
      nomeProfissional: map['nomeProfissional'],
      uf: map['uf'],
      codigoIbgeMunicipio: map['codigoIbgeMunicipio']?.toInt(),
      cbos: map['cbos']?.toInt(),
      numeroConselhoProfissional: map['numeroConselhoProfissional']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfissionalSolicitante.fromJson(String source) =>
      ProfissionalSolicitante.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProfissionalSolicitante(conselhoProfissional: $conselhoProfissional, nomeProfissional: $nomeProfissional, uf: $uf, codigoIbgeMunicipio: $codigoIbgeMunicipio, cbos: $cbos, numeroConselhoProfissional: $numeroConselhoProfissional)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfissionalSolicitante &&
        other.conselhoProfissional == conselhoProfissional &&
        other.nomeProfissional == nomeProfissional &&
        other.uf == uf &&
        other.codigoIbgeMunicipio == codigoIbgeMunicipio &&
        other.cbos == cbos &&
        other.numeroConselhoProfissional == numeroConselhoProfissional;
  }

  @override
  int get hashCode {
    return conselhoProfissional.hashCode ^
        nomeProfissional.hashCode ^
        uf.hashCode ^
        codigoIbgeMunicipio.hashCode ^
        cbos.hashCode ^
        numeroConselhoProfissional.hashCode;
  }
}

class DadosExecutante {
  final String codigoPrestadorNaOperadora;
  final String nomeContratado;
  DadosExecutante({
    required this.codigoPrestadorNaOperadora,
    required this.nomeContratado,
  });

  DadosExecutante copyWith({
    String? codigoPrestadorNaOperadora,
    String? nomeContratado,
  }) {
    return DadosExecutante(
      codigoPrestadorNaOperadora:
          codigoPrestadorNaOperadora ?? this.codigoPrestadorNaOperadora,
      nomeContratado: nomeContratado ?? this.nomeContratado,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'codigoPrestadorNaOperadora': codigoPrestadorNaOperadora,
      'nomeContratado': nomeContratado,
    };
  }

  factory DadosExecutante.fromMap(Map<String, dynamic> map) {
    return DadosExecutante(
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
      nomeContratado: map['nomeContratado'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosExecutante.fromJson(String source) =>
      DadosExecutante.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosExecutante(codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora, nomeContratado: $nomeContratado)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosExecutante &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora &&
        other.nomeContratado == nomeContratado;
  }

  @override
  int get hashCode =>
      codigoPrestadorNaOperadora.hashCode ^ nomeContratado.hashCode;
}
