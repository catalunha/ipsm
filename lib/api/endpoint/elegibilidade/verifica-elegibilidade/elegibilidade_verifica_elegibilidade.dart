import 'dart:convert';

class ElegibilidadeVerificaElegibilidade {
  final Cabecalho cabecalho;
  final PedidoElegibilidade pedidoElegibilidade;
  ElegibilidadeVerificaElegibilidade({
    required this.cabecalho,
    required this.pedidoElegibilidade,
  });

  ElegibilidadeVerificaElegibilidade copyWith({
    Cabecalho? cabecalho,
    PedidoElegibilidade? pedidoElegibilidade,
  }) {
    return ElegibilidadeVerificaElegibilidade(
      cabecalho: cabecalho ?? this.cabecalho,
      pedidoElegibilidade: pedidoElegibilidade ?? this.pedidoElegibilidade,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cabecalho': cabecalho.toMap(),
      'pedidoElegibilidade': pedidoElegibilidade.toMap(),
    };
  }

  factory ElegibilidadeVerificaElegibilidade.fromMap(Map<String, dynamic> map) {
    return ElegibilidadeVerificaElegibilidade(
      cabecalho: Cabecalho.fromMap(map['cabecalho']),
      pedidoElegibilidade:
          PedidoElegibilidade.fromMap(map['pedidoElegibilidade']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ElegibilidadeVerificaElegibilidade.fromJson(String source) =>
      ElegibilidadeVerificaElegibilidade.fromMap(json.decode(source));

  @override
  String toString() =>
      'ElegibilidadeVerificaElegibilidade(cabecalho: $cabecalho, pedidoElegibilidade: $pedidoElegibilidade)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ElegibilidadeVerificaElegibilidade &&
        other.cabecalho == cabecalho &&
        other.pedidoElegibilidade == pedidoElegibilidade;
  }

  @override
  int get hashCode => cabecalho.hashCode ^ pedidoElegibilidade.hashCode;
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
  final String sequencialTransacao;
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
    String? sequencialTransacao,
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
      sequencialTransacao: map['sequencialTransacao'],
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

class PedidoElegibilidade {
  final String nomeBeneficiario;
  final String numeroCarteira;
  final String identificadorBeneficiario;
  final String validadeCarteira;
  final DadosPrestador dadosPrestador;
  final String numeroCNS;
  PedidoElegibilidade({
    required this.nomeBeneficiario,
    required this.numeroCarteira,
    required this.identificadorBeneficiario,
    required this.validadeCarteira,
    required this.dadosPrestador,
    required this.numeroCNS,
  });

  PedidoElegibilidade copyWith({
    String? nomeBeneficiario,
    String? numeroCarteira,
    String? identificadorBeneficiario,
    String? validadeCarteira,
    DadosPrestador? dadosPrestador,
    String? numeroCNS,
  }) {
    return PedidoElegibilidade(
      nomeBeneficiario: nomeBeneficiario ?? this.nomeBeneficiario,
      numeroCarteira: numeroCarteira ?? this.numeroCarteira,
      identificadorBeneficiario:
          identificadorBeneficiario ?? this.identificadorBeneficiario,
      validadeCarteira: validadeCarteira ?? this.validadeCarteira,
      dadosPrestador: dadosPrestador ?? this.dadosPrestador,
      numeroCNS: numeroCNS ?? this.numeroCNS,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeBeneficiario': nomeBeneficiario,
      'numeroCarteira': numeroCarteira,
      'identificadorBeneficiario': identificadorBeneficiario,
      'validadeCarteira': validadeCarteira,
      'dadosPrestador': dadosPrestador.toMap(),
      'numeroCNS': numeroCNS,
    };
  }

  factory PedidoElegibilidade.fromMap(Map<String, dynamic> map) {
    return PedidoElegibilidade(
      nomeBeneficiario: map['nomeBeneficiario'],
      numeroCarteira: map['numeroCarteira'],
      identificadorBeneficiario: map['identificadorBeneficiario'],
      validadeCarteira: map['validadeCarteira'],
      dadosPrestador: DadosPrestador.fromMap(map['dadosPrestador']),
      numeroCNS: map['numeroCNS'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PedidoElegibilidade.fromJson(String source) =>
      PedidoElegibilidade.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PedidoElegibilidade(nomeBeneficiario: $nomeBeneficiario, numeroCarteira: $numeroCarteira, identificadorBeneficiario: $identificadorBeneficiario, validadeCarteira: $validadeCarteira, dadosPrestador: $dadosPrestador, numeroCNS: $numeroCNS)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PedidoElegibilidade &&
        other.nomeBeneficiario == nomeBeneficiario &&
        other.numeroCarteira == numeroCarteira &&
        other.identificadorBeneficiario == identificadorBeneficiario &&
        other.validadeCarteira == validadeCarteira &&
        other.dadosPrestador == dadosPrestador &&
        other.numeroCNS == numeroCNS;
  }

  @override
  int get hashCode {
    return nomeBeneficiario.hashCode ^
        numeroCarteira.hashCode ^
        identificadorBeneficiario.hashCode ^
        validadeCarteira.hashCode ^
        dadosPrestador.hashCode ^
        numeroCNS.hashCode;
  }
}

class DadosPrestador {
  final String nomeContratado;
  final String codigoPrestadorNaOperadora;
  DadosPrestador({
    required this.nomeContratado,
    required this.codigoPrestadorNaOperadora,
  });

  DadosPrestador copyWith({
    String? nomeContratado,
    String? codigoPrestadorNaOperadora,
  }) {
    return DadosPrestador(
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

  factory DadosPrestador.fromMap(Map<String, dynamic> map) {
    return DadosPrestador(
      nomeContratado: map['nomeContratado'],
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosPrestador.fromJson(String source) =>
      DadosPrestador.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosPrestador(nomeContratado: $nomeContratado, codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosPrestador &&
        other.nomeContratado == nomeContratado &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora;
  }

  @override
  int get hashCode =>
      nomeContratado.hashCode ^ codigoPrestadorNaOperadora.hashCode;
}
