import 'dart:convert';

class AutorizacaoCancelaProcedimento {
  final Cabecalho cabecalho;
  final PrestadorParaOperadora prestadorParaOperadora;
  AutorizacaoCancelaProcedimento({
    required this.cabecalho,
    required this.prestadorParaOperadora,
  });

  AutorizacaoCancelaProcedimento copyWith({
    Cabecalho? cabecalho,
    PrestadorParaOperadora? prestadorParaOperadora,
  }) {
    return AutorizacaoCancelaProcedimento(
      cabecalho: cabecalho ?? this.cabecalho,
      prestadorParaOperadora:
          prestadorParaOperadora ?? this.prestadorParaOperadora,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cabecalho': cabecalho.toMap(),
      'prestadorParaOperadora': prestadorParaOperadora.toMap(),
    };
  }

  factory AutorizacaoCancelaProcedimento.fromMap(Map<String, dynamic> map) {
    return AutorizacaoCancelaProcedimento(
      cabecalho: Cabecalho.fromMap(map['cabecalho']),
      prestadorParaOperadora:
          PrestadorParaOperadora.fromMap(map['prestadorParaOperadora']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AutorizacaoCancelaProcedimento.fromJson(String source) =>
      AutorizacaoCancelaProcedimento.fromMap(json.decode(source));

  @override
  String toString() =>
      'AutorizacaoCancelaProcedimento(cabecalho: $cabecalho, prestadorParaOperadora: $prestadorParaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutorizacaoCancelaProcedimento &&
        other.cabecalho == cabecalho &&
        other.prestadorParaOperadora == prestadorParaOperadora;
  }

  @override
  int get hashCode => cabecalho.hashCode ^ prestadorParaOperadora.hashCode;
}

class Cabecalho {
  final IdentificacaoTransacao identificacaoTransacao;
  final Origem origem;
  final Destino destino;
  final String versaoPadrao;
  Cabecalho({
    required this.identificacaoTransacao,
    required this.origem,
    required this.destino,
    required this.versaoPadrao,
  });

  Cabecalho copyWith({
    IdentificacaoTransacao? identificacaoTransacao,
    Origem? origem,
    Destino? destino,
    String? versaoPadrao,
  }) {
    return Cabecalho(
      identificacaoTransacao:
          identificacaoTransacao ?? this.identificacaoTransacao,
      origem: origem ?? this.origem,
      destino: destino ?? this.destino,
      versaoPadrao: versaoPadrao ?? this.versaoPadrao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoTransacao': identificacaoTransacao.toMap(),
      'origem': origem.toMap(),
      'destino': destino.toMap(),
      'versaoPadrao': versaoPadrao,
    };
  }

  factory Cabecalho.fromMap(Map<String, dynamic> map) {
    return Cabecalho(
      identificacaoTransacao:
          IdentificacaoTransacao.fromMap(map['identificacaoTransacao']),
      origem: Origem.fromMap(map['origem']),
      destino: Destino.fromMap(map['destino']),
      versaoPadrao: map['versaoPadrao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cabecalho.fromJson(String source) =>
      Cabecalho.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cabecalho(identificacaoTransacao: $identificacaoTransacao, origem: $origem, destino: $destino, versaoPadrao: $versaoPadrao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cabecalho &&
        other.identificacaoTransacao == identificacaoTransacao &&
        other.origem == origem &&
        other.destino == destino &&
        other.versaoPadrao == versaoPadrao;
  }

  @override
  int get hashCode {
    return identificacaoTransacao.hashCode ^
        origem.hashCode ^
        destino.hashCode ^
        versaoPadrao.hashCode;
  }
}

class IdentificacaoTransacao {
  final String tipoTransacao;
  final String sequencialTransacao;
  final String dataRegistroTransacao;
  final String horaRegistroTransacao;
  IdentificacaoTransacao({
    required this.tipoTransacao,
    required this.sequencialTransacao,
    required this.dataRegistroTransacao,
    required this.horaRegistroTransacao,
  });

  IdentificacaoTransacao copyWith({
    String? tipoTransacao,
    String? sequencialTransacao,
    String? dataRegistroTransacao,
    String? horaRegistroTransacao,
  }) {
    return IdentificacaoTransacao(
      tipoTransacao: tipoTransacao ?? this.tipoTransacao,
      sequencialTransacao: sequencialTransacao ?? this.sequencialTransacao,
      dataRegistroTransacao:
          dataRegistroTransacao ?? this.dataRegistroTransacao,
      horaRegistroTransacao:
          horaRegistroTransacao ?? this.horaRegistroTransacao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tipoTransacao': tipoTransacao,
      'sequencialTransacao': sequencialTransacao,
      'dataRegistroTransacao': dataRegistroTransacao,
      'horaRegistroTransacao': horaRegistroTransacao,
    };
  }

  factory IdentificacaoTransacao.fromMap(Map<String, dynamic> map) {
    return IdentificacaoTransacao(
      tipoTransacao: map['tipoTransacao'],
      sequencialTransacao: map['sequencialTransacao'],
      dataRegistroTransacao: map['dataRegistroTransacao'],
      horaRegistroTransacao: map['horaRegistroTransacao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoTransacao.fromJson(String source) =>
      IdentificacaoTransacao.fromMap(json.decode(source));

  @override
  String toString() {
    return 'IdentificacaoTransacao(tipoTransacao: $tipoTransacao, sequencialTransacao: $sequencialTransacao, dataRegistroTransacao: $dataRegistroTransacao, horaRegistroTransacao: $horaRegistroTransacao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoTransacao &&
        other.tipoTransacao == tipoTransacao &&
        other.sequencialTransacao == sequencialTransacao &&
        other.dataRegistroTransacao == dataRegistroTransacao &&
        other.horaRegistroTransacao == horaRegistroTransacao;
  }

  @override
  int get hashCode {
    return tipoTransacao.hashCode ^
        sequencialTransacao.hashCode ^
        dataRegistroTransacao.hashCode ^
        horaRegistroTransacao.hashCode;
  }
}

class Origem {
  final IdentificacaoPrestador identificacaoPrestador;
  Origem({
    required this.identificacaoPrestador,
  });

  Origem copyWith({
    IdentificacaoPrestador? identificacaoPrestador,
  }) {
    return Origem(
      identificacaoPrestador:
          identificacaoPrestador ?? this.identificacaoPrestador,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoPrestador': identificacaoPrestador.toMap(),
    };
  }

  factory Origem.fromMap(Map<String, dynamic> map) {
    return Origem(
      identificacaoPrestador:
          IdentificacaoPrestador.fromMap(map['identificacaoPrestador']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Origem.fromJson(String source) => Origem.fromMap(json.decode(source));

  @override
  String toString() =>
      'Origem(identificacaoPrestador: $identificacaoPrestador)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Origem &&
        other.identificacaoPrestador == identificacaoPrestador;
  }

  @override
  int get hashCode => identificacaoPrestador.hashCode;
}

class IdentificacaoPrestador {
  final String cnpj;
  IdentificacaoPrestador({
    required this.cnpj,
  });

  IdentificacaoPrestador copyWith({
    String? cnpj,
  }) {
    return IdentificacaoPrestador(
      cnpj: cnpj ?? this.cnpj,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cnpj': cnpj,
    };
  }

  factory IdentificacaoPrestador.fromMap(Map<String, dynamic> map) {
    return IdentificacaoPrestador(
      cnpj: map['cnpj'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoPrestador.fromJson(String source) =>
      IdentificacaoPrestador.fromMap(json.decode(source));

  @override
  String toString() => 'IdentificacaoPrestador(cnpj: $cnpj)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoPrestador && other.cnpj == cnpj;
  }

  @override
  int get hashCode => cnpj.hashCode;
}

class Destino {
  final String registroANS;
  Destino({
    required this.registroANS,
  });

  Destino copyWith({
    String? registroANS,
  }) {
    return Destino(
      registroANS: registroANS ?? this.registroANS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'registroANS': registroANS,
    };
  }

  factory Destino.fromMap(Map<String, dynamic> map) {
    return Destino(
      registroANS: map['registroANS'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Destino.fromJson(String source) =>
      Destino.fromMap(json.decode(source));

  @override
  String toString() => 'Destino(registroANS: $registroANS)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Destino && other.registroANS == registroANS;
  }

  @override
  int get hashCode => registroANS.hashCode;
}

class PrestadorParaOperadora {
  final CancelaGuia cancelaGuia;
  PrestadorParaOperadora({
    required this.cancelaGuia,
  });

  PrestadorParaOperadora copyWith({
    CancelaGuia? cancelaGuia,
  }) {
    return PrestadorParaOperadora(
      cancelaGuia: cancelaGuia ?? this.cancelaGuia,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cancelaGuia': cancelaGuia.toMap(),
    };
  }

  factory PrestadorParaOperadora.fromMap(Map<String, dynamic> map) {
    return PrestadorParaOperadora(
      cancelaGuia: CancelaGuia.fromMap(map['cancelaGuia']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PrestadorParaOperadora.fromJson(String source) =>
      PrestadorParaOperadora.fromMap(json.decode(source));

  @override
  String toString() => 'PrestadorParaOperadora(cancelaGuia: $cancelaGuia)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PrestadorParaOperadora && other.cancelaGuia == cancelaGuia;
  }

  @override
  int get hashCode => cancelaGuia.hashCode;
}

class CancelaGuia {
  final DadosPrestador dadosPrestador;
  final String tipoGuia;
  final Guia guia;
  final String observacao;
  final String usuario;
  CancelaGuia({
    required this.dadosPrestador,
    required this.tipoGuia,
    required this.guia,
    required this.observacao,
    required this.usuario,
  });

  CancelaGuia copyWith({
    DadosPrestador? dadosPrestador,
    String? tipoGuia,
    Guia? guia,
    String? observacao,
    String? usuario,
  }) {
    return CancelaGuia(
      dadosPrestador: dadosPrestador ?? this.dadosPrestador,
      tipoGuia: tipoGuia ?? this.tipoGuia,
      guia: guia ?? this.guia,
      observacao: observacao ?? this.observacao,
      usuario: usuario ?? this.usuario,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dadosPrestador': dadosPrestador.toMap(),
      'tipoGuia': tipoGuia,
      'guia': guia.toMap(),
      'observacao': observacao,
      'usuario': usuario,
    };
  }

  factory CancelaGuia.fromMap(Map<String, dynamic> map) {
    return CancelaGuia(
      dadosPrestador: DadosPrestador.fromMap(map['dadosPrestador']),
      tipoGuia: map['tipoGuia'],
      guia: Guia.fromMap(map['guia']),
      observacao: map['observacao'],
      usuario: map['usuario'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CancelaGuia.fromJson(String source) =>
      CancelaGuia.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CancelaGuia(dadosPrestador: $dadosPrestador, tipoGuia: $tipoGuia, guia: $guia, observacao: $observacao, usuario: $usuario)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CancelaGuia &&
        other.dadosPrestador == dadosPrestador &&
        other.tipoGuia == tipoGuia &&
        other.guia == guia &&
        other.observacao == observacao &&
        other.usuario == usuario;
  }

  @override
  int get hashCode {
    return dadosPrestador.hashCode ^
        tipoGuia.hashCode ^
        guia.hashCode ^
        observacao.hashCode ^
        usuario.hashCode;
  }
}

class DadosPrestador {
  final Identificacao identificacao;
  final String nomeContratado;
  final String numeroCNES;
  DadosPrestador({
    required this.identificacao,
    required this.nomeContratado,
    required this.numeroCNES,
  });

  DadosPrestador copyWith({
    Identificacao? identificacao,
    String? nomeContratado,
    String? numeroCNES,
  }) {
    return DadosPrestador(
      identificacao: identificacao ?? this.identificacao,
      nomeContratado: nomeContratado ?? this.nomeContratado,
      numeroCNES: numeroCNES ?? this.numeroCNES,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacao': identificacao.toMap(),
      'nomeContratado': nomeContratado,
      'numeroCNES': numeroCNES,
    };
  }

  factory DadosPrestador.fromMap(Map<String, dynamic> map) {
    return DadosPrestador(
      identificacao: Identificacao.fromMap(map['identificacao']),
      nomeContratado: map['nomeContratado'],
      numeroCNES: map['numeroCNES'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosPrestador.fromJson(String source) =>
      DadosPrestador.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosPrestador(identificacao: $identificacao, nomeContratado: $nomeContratado, numeroCNES: $numeroCNES)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosPrestador &&
        other.identificacao == identificacao &&
        other.nomeContratado == nomeContratado &&
        other.numeroCNES == numeroCNES;
  }

  @override
  int get hashCode =>
      identificacao.hashCode ^ nomeContratado.hashCode ^ numeroCNES.hashCode;
}

class Identificacao {
  final String codigoPrestadorNaOperadora;
  Identificacao({
    required this.codigoPrestadorNaOperadora,
  });

  Identificacao copyWith({
    String? codigoPrestadorNaOperadora,
  }) {
    return Identificacao(
      codigoPrestadorNaOperadora:
          codigoPrestadorNaOperadora ?? this.codigoPrestadorNaOperadora,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'codigoPrestadorNaOperadora': codigoPrestadorNaOperadora,
    };
  }

  factory Identificacao.fromMap(Map<String, dynamic> map) {
    return Identificacao(
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Identificacao.fromJson(String source) =>
      Identificacao.fromMap(json.decode(source));

  @override
  String toString() =>
      'Identificacao(codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Identificacao &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora;
  }

  @override
  int get hashCode => codigoPrestadorNaOperadora.hashCode;
}

class Guia {
  final DadosGuia dadosGuia;
  Guia({
    required this.dadosGuia,
  });

  Guia copyWith({
    DadosGuia? dadosGuia,
  }) {
    return Guia(
      dadosGuia: dadosGuia ?? this.dadosGuia,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dadosGuia': dadosGuia.toMap(),
    };
  }

  factory Guia.fromMap(Map<String, dynamic> map) {
    return Guia(
      dadosGuia: DadosGuia.fromMap(map['dadosGuia']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Guia.fromJson(String source) => Guia.fromMap(json.decode(source));

  @override
  String toString() => 'Guia(dadosGuia: $dadosGuia)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Guia && other.dadosGuia == dadosGuia;
  }

  @override
  int get hashCode => dadosGuia.hashCode;
}

class DadosGuia {
  final IdentificacaoFontePagadora identificacaoFontePagadora;
  final String dataEmissaoGuia;
  final String numeroGuiaPrestador;
  DadosGuia({
    required this.identificacaoFontePagadora,
    required this.dataEmissaoGuia,
    required this.numeroGuiaPrestador,
  });

  DadosGuia copyWith({
    IdentificacaoFontePagadora? identificacaoFontePagadora,
    String? dataEmissaoGuia,
    String? numeroGuiaPrestador,
  }) {
    return DadosGuia(
      identificacaoFontePagadora:
          identificacaoFontePagadora ?? this.identificacaoFontePagadora,
      dataEmissaoGuia: dataEmissaoGuia ?? this.dataEmissaoGuia,
      numeroGuiaPrestador: numeroGuiaPrestador ?? this.numeroGuiaPrestador,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoFontePagadora': identificacaoFontePagadora.toMap(),
      'dataEmissaoGuia': dataEmissaoGuia,
      'numeroGuiaPrestador': numeroGuiaPrestador,
    };
  }

  factory DadosGuia.fromMap(Map<String, dynamic> map) {
    return DadosGuia(
      identificacaoFontePagadora:
          IdentificacaoFontePagadora.fromMap(map['identificacaoFontePagadora']),
      dataEmissaoGuia: map['dataEmissaoGuia'],
      numeroGuiaPrestador: map['numeroGuiaPrestador'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosGuia.fromJson(String source) =>
      DadosGuia.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosGuia(identificacaoFontePagadora: $identificacaoFontePagadora, dataEmissaoGuia: $dataEmissaoGuia, numeroGuiaPrestador: $numeroGuiaPrestador)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosGuia &&
        other.identificacaoFontePagadora == identificacaoFontePagadora &&
        other.dataEmissaoGuia == dataEmissaoGuia &&
        other.numeroGuiaPrestador == numeroGuiaPrestador;
  }

  @override
  int get hashCode =>
      identificacaoFontePagadora.hashCode ^
      dataEmissaoGuia.hashCode ^
      numeroGuiaPrestador.hashCode;
}

class IdentificacaoFontePagadora {
  final String registroANS;
  IdentificacaoFontePagadora({
    required this.registroANS,
  });

  IdentificacaoFontePagadora copyWith({
    String? registroANS,
  }) {
    return IdentificacaoFontePagadora(
      registroANS: registroANS ?? this.registroANS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'registroANS': registroANS,
    };
  }

  factory IdentificacaoFontePagadora.fromMap(Map<String, dynamic> map) {
    return IdentificacaoFontePagadora(
      registroANS: map['registroANS'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoFontePagadora.fromJson(String source) =>
      IdentificacaoFontePagadora.fromMap(json.decode(source));

  @override
  String toString() => 'IdentificacaoFontePagadora(registroANS: $registroANS)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoFontePagadora &&
        other.registroANS == registroANS;
  }

  @override
  int get hashCode => registroANS.hashCode;
}
