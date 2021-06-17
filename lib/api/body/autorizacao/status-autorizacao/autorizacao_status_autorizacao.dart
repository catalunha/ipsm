import 'dart:convert';

class AutorizacaoStatusAutorizacao {
  final PrestadorParaOperadora prestadorParaOperadora;
  final Cabecalho cabecalho;
  AutorizacaoStatusAutorizacao({
    required this.prestadorParaOperadora,
    required this.cabecalho,
  });

  AutorizacaoStatusAutorizacao copyWith({
    PrestadorParaOperadora? prestadorParaOperadora,
    Cabecalho? cabecalho,
  }) {
    return AutorizacaoStatusAutorizacao(
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

  factory AutorizacaoStatusAutorizacao.fromMap(Map<String, dynamic> map) {
    return AutorizacaoStatusAutorizacao(
      prestadorParaOperadora:
          PrestadorParaOperadora.fromMap(map['prestadorParaOperadora']),
      cabecalho: Cabecalho.fromMap(map['cabecalho']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AutorizacaoStatusAutorizacao.fromJson(String source) =>
      AutorizacaoStatusAutorizacao.fromMap(json.decode(source));

  @override
  String toString() =>
      'AutorizacaoStatusAutorizacao(prestadorParaOperadora: $prestadorParaOperadora, cabecalho: $cabecalho)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutorizacaoStatusAutorizacao &&
        other.prestadorParaOperadora == prestadorParaOperadora &&
        other.cabecalho == cabecalho;
  }

  @override
  int get hashCode => prestadorParaOperadora.hashCode ^ cabecalho.hashCode;
}

class PrestadorParaOperadora {
  final SolicitaStatusAutorizacao solicitaStatusAutorizacao;
  PrestadorParaOperadora({
    required this.solicitaStatusAutorizacao,
  });

  PrestadorParaOperadora copyWith({
    SolicitaStatusAutorizacao? solicitaStatusAutorizacao,
  }) {
    return PrestadorParaOperadora(
      solicitaStatusAutorizacao:
          solicitaStatusAutorizacao ?? this.solicitaStatusAutorizacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'solicitaStatusAutorizacao': solicitaStatusAutorizacao.toMap(),
    };
  }

  factory PrestadorParaOperadora.fromMap(Map<String, dynamic> map) {
    return PrestadorParaOperadora(
      solicitaStatusAutorizacao:
          SolicitaStatusAutorizacao.fromMap(map['solicitaStatusAutorizacao']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PrestadorParaOperadora.fromJson(String source) =>
      PrestadorParaOperadora.fromMap(json.decode(source));

  @override
  String toString() =>
      'PrestadorParaOperadora(solicitaStatusAutorizacao: $solicitaStatusAutorizacao)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PrestadorParaOperadora &&
        other.solicitaStatusAutorizacao == solicitaStatusAutorizacao;
  }

  @override
  int get hashCode => solicitaStatusAutorizacao.hashCode;
}

class SolicitaStatusAutorizacao {
  final DadosContratado dadosContratado;
  final DadosBeneficiario dadosBeneficiario;
  final IdentificacaoSolicitacao identificacaoSolicitacao;
  SolicitaStatusAutorizacao({
    required this.dadosContratado,
    required this.dadosBeneficiario,
    required this.identificacaoSolicitacao,
  });

  SolicitaStatusAutorizacao copyWith({
    DadosContratado? dadosContratado,
    DadosBeneficiario? dadosBeneficiario,
    IdentificacaoSolicitacao? identificacaoSolicitacao,
  }) {
    return SolicitaStatusAutorizacao(
      dadosContratado: dadosContratado ?? this.dadosContratado,
      dadosBeneficiario: dadosBeneficiario ?? this.dadosBeneficiario,
      identificacaoSolicitacao:
          identificacaoSolicitacao ?? this.identificacaoSolicitacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dadosContratado': dadosContratado.toMap(),
      'dadosBeneficiario': dadosBeneficiario.toMap(),
      'identificacaoSolicitacao': identificacaoSolicitacao.toMap(),
    };
  }

  factory SolicitaStatusAutorizacao.fromMap(Map<String, dynamic> map) {
    return SolicitaStatusAutorizacao(
      dadosContratado: DadosContratado.fromMap(map['dadosContratado']),
      dadosBeneficiario: DadosBeneficiario.fromMap(map['dadosBeneficiario']),
      identificacaoSolicitacao:
          IdentificacaoSolicitacao.fromMap(map['identificacaoSolicitacao']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SolicitaStatusAutorizacao.fromJson(String source) =>
      SolicitaStatusAutorizacao.fromMap(json.decode(source));

  @override
  String toString() =>
      'SolicitaStatusAutorizacao(dadosContratado: $dadosContratado, dadosBeneficiario: $dadosBeneficiario, identificacaoSolicitacao: $identificacaoSolicitacao)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SolicitaStatusAutorizacao &&
        other.dadosContratado == dadosContratado &&
        other.dadosBeneficiario == dadosBeneficiario &&
        other.identificacaoSolicitacao == identificacaoSolicitacao;
  }

  @override
  int get hashCode =>
      dadosContratado.hashCode ^
      dadosBeneficiario.hashCode ^
      identificacaoSolicitacao.hashCode;
}

class DadosContratado {
  final String nomeContratado;
  final String codigoPrestadorNaOperadora;
  DadosContratado({
    required this.nomeContratado,
    required this.codigoPrestadorNaOperadora,
  });

  DadosContratado copyWith({
    String? nomeContratado,
    String? codigoPrestadorNaOperadora,
  }) {
    return DadosContratado(
      nomeContratado: nomeContratado ?? this.nomeContratado,
      codigoPrestadorNaOperadora:
          codigoPrestadorNaOperadora ?? this.codigoPrestadorNaOperadora,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeContratado': nomeContratado,
      'codigoPrestadorNaOperadora': codigoPrestadorNaOperadora,
    };
  }

  factory DadosContratado.fromMap(Map<String, dynamic> map) {
    return DadosContratado(
      nomeContratado: map['nomeContratado'],
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosContratado.fromJson(String source) =>
      DadosContratado.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosContratado(nomeContratado: $nomeContratado, codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosContratado &&
        other.nomeContratado == nomeContratado &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora;
  }

  @override
  int get hashCode =>
      nomeContratado.hashCode ^ codigoPrestadorNaOperadora.hashCode;
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

class IdentificacaoSolicitacao {
  final String numeroGuiaPrestador;
  final int registroANS;
  IdentificacaoSolicitacao({
    required this.numeroGuiaPrestador,
    required this.registroANS,
  });

  IdentificacaoSolicitacao copyWith({
    String? numeroGuiaPrestador,
    int? registroANS,
  }) {
    return IdentificacaoSolicitacao(
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

  factory IdentificacaoSolicitacao.fromMap(Map<String, dynamic> map) {
    return IdentificacaoSolicitacao(
      numeroGuiaPrestador: map['numeroGuiaPrestador'],
      registroANS: map['registroANS']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoSolicitacao.fromJson(String source) =>
      IdentificacaoSolicitacao.fromMap(json.decode(source));

  @override
  String toString() =>
      'IdentificacaoSolicitacao(numeroGuiaPrestador: $numeroGuiaPrestador, registroANS: $registroANS)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoSolicitacao &&
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
