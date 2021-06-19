import 'dart:convert';

class FarmarciaCancelaMedicamento {
  final CancelaPedidoMedicamento cancelaPedidoMedicamento;
  FarmarciaCancelaMedicamento({
    required this.cancelaPedidoMedicamento,
  });

  FarmarciaCancelaMedicamento copyWith({
    CancelaPedidoMedicamento? cancelaPedidoMedicamento,
  }) {
    return FarmarciaCancelaMedicamento(
      cancelaPedidoMedicamento:
          cancelaPedidoMedicamento ?? this.cancelaPedidoMedicamento,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cancelaPedidoMedicamento': cancelaPedidoMedicamento.toMap(),
    };
  }

  factory FarmarciaCancelaMedicamento.fromMap(Map<String, dynamic> map) {
    return FarmarciaCancelaMedicamento(
      cancelaPedidoMedicamento:
          CancelaPedidoMedicamento.fromMap(map['cancelaPedidoMedicamento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FarmarciaCancelaMedicamento.fromJson(String source) =>
      FarmarciaCancelaMedicamento.fromMap(json.decode(source));

  @override
  String toString() =>
      'FarmarciaCancelaMedicamento(cancelaPedidoMedicamento: $cancelaPedidoMedicamento)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FarmarciaCancelaMedicamento &&
        other.cancelaPedidoMedicamento == cancelaPedidoMedicamento;
  }

  @override
  int get hashCode => cancelaPedidoMedicamento.hashCode;
}

class CancelaPedidoMedicamento {
  final DadosPrestador dadosPrestador;
  final Pedido pedido;
  final String observacao;
  final String usuario;
  CancelaPedidoMedicamento({
    required this.dadosPrestador,
    required this.pedido,
    required this.observacao,
    required this.usuario,
  });

  CancelaPedidoMedicamento copyWith({
    DadosPrestador? dadosPrestador,
    Pedido? pedido,
    String? observacao,
    String? usuario,
  }) {
    return CancelaPedidoMedicamento(
      dadosPrestador: dadosPrestador ?? this.dadosPrestador,
      pedido: pedido ?? this.pedido,
      observacao: observacao ?? this.observacao,
      usuario: usuario ?? this.usuario,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dadosPrestador': dadosPrestador.toMap(),
      'pedido': pedido.toMap(),
      'observacao': observacao,
      'usuario': usuario,
    };
  }

  factory CancelaPedidoMedicamento.fromMap(Map<String, dynamic> map) {
    return CancelaPedidoMedicamento(
      dadosPrestador: DadosPrestador.fromMap(map['dadosPrestador']),
      pedido: Pedido.fromMap(map['pedido']),
      observacao: map['observacao'],
      usuario: map['usuario'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CancelaPedidoMedicamento.fromJson(String source) =>
      CancelaPedidoMedicamento.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CancelaPedidoMedicamento(dadosPrestador: $dadosPrestador, pedido: $pedido, observacao: $observacao, usuario: $usuario)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CancelaPedidoMedicamento &&
        other.dadosPrestador == dadosPrestador &&
        other.pedido == pedido &&
        other.observacao == observacao &&
        other.usuario == usuario;
  }

  @override
  int get hashCode {
    return dadosPrestador.hashCode ^
        pedido.hashCode ^
        observacao.hashCode ^
        usuario.hashCode;
  }
}

class DadosPrestador {
  final String codigoPrestadorNaOperadora;
  final String nomeContratado;
  DadosPrestador({
    required this.codigoPrestadorNaOperadora,
    required this.nomeContratado,
  });

  DadosPrestador copyWith({
    String? codigoPrestadorNaOperadora,
    String? nomeContratado,
  }) {
    return DadosPrestador(
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

  factory DadosPrestador.fromMap(Map<String, dynamic> map) {
    return DadosPrestador(
      codigoPrestadorNaOperadora: map['codigoPrestadorNaOperadora'],
      nomeContratado: map['nomeContratado'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosPrestador.fromJson(String source) =>
      DadosPrestador.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosPrestador(codigoPrestadorNaOperadora: $codigoPrestadorNaOperadora, nomeContratado: $nomeContratado)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosPrestador &&
        other.codigoPrestadorNaOperadora == codigoPrestadorNaOperadora &&
        other.nomeContratado == nomeContratado;
  }

  @override
  int get hashCode =>
      codigoPrestadorNaOperadora.hashCode ^ nomeContratado.hashCode;
}

class Pedido {
  final DadosPedido dadosPedido;
  Pedido({
    required this.dadosPedido,
  });

  Pedido copyWith({
    DadosPedido? dadosPedido,
  }) {
    return Pedido(
      dadosPedido: dadosPedido ?? this.dadosPedido,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dadosPedido': dadosPedido.toMap(),
    };
  }

  factory Pedido.fromMap(Map<String, dynamic> map) {
    return Pedido(
      dadosPedido: DadosPedido.fromMap(map['dadosPedido']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pedido.fromJson(String source) => Pedido.fromMap(json.decode(source));

  @override
  String toString() => 'Pedido(dadosPedido: $dadosPedido)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pedido && other.dadosPedido == dadosPedido;
  }

  @override
  int get hashCode => dadosPedido.hashCode;
}

class DadosPedido {
  final IdentificacaoFontePagadora identificacaoFontePagadora;
  final String dataEmissao;
  final String numeroGuiaPrestador;
  DadosPedido({
    required this.identificacaoFontePagadora,
    required this.dataEmissao,
    required this.numeroGuiaPrestador,
  });

  DadosPedido copyWith({
    IdentificacaoFontePagadora? identificacaoFontePagadora,
    String? dataEmissao,
    String? numeroGuiaPrestador,
  }) {
    return DadosPedido(
      identificacaoFontePagadora:
          identificacaoFontePagadora ?? this.identificacaoFontePagadora,
      dataEmissao: dataEmissao ?? this.dataEmissao,
      numeroGuiaPrestador: numeroGuiaPrestador ?? this.numeroGuiaPrestador,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'identificacaoFontePagadora': identificacaoFontePagadora.toMap(),
      'dataEmissao': dataEmissao,
      'numeroGuiaPrestador': numeroGuiaPrestador,
    };
  }

  factory DadosPedido.fromMap(Map<String, dynamic> map) {
    return DadosPedido(
      identificacaoFontePagadora:
          IdentificacaoFontePagadora.fromMap(map['identificacaoFontePagadora']),
      dataEmissao: map['dataEmissao'],
      numeroGuiaPrestador: map['numeroGuiaPrestador'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosPedido.fromJson(String source) =>
      DadosPedido.fromMap(json.decode(source));

  @override
  String toString() =>
      'DadosPedido(identificacaoFontePagadora: $identificacaoFontePagadora, dataEmissao: $dataEmissao, numeroGuiaPrestador: $numeroGuiaPrestador)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DadosPedido &&
        other.identificacaoFontePagadora == identificacaoFontePagadora &&
        other.dataEmissao == dataEmissao &&
        other.numeroGuiaPrestador == numeroGuiaPrestador;
  }

  @override
  int get hashCode =>
      identificacaoFontePagadora.hashCode ^
      dataEmissao.hashCode ^
      numeroGuiaPrestador.hashCode;
}

class IdentificacaoFontePagadora {
  final String nome;
  final String numeroCartao;
  IdentificacaoFontePagadora({
    required this.nome,
    required this.numeroCartao,
  });

  IdentificacaoFontePagadora copyWith({
    String? nome,
    String? numeroCartao,
  }) {
    return IdentificacaoFontePagadora(
      nome: nome ?? this.nome,
      numeroCartao: numeroCartao ?? this.numeroCartao,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'numeroCartao': numeroCartao,
    };
  }

  factory IdentificacaoFontePagadora.fromMap(Map<String, dynamic> map) {
    return IdentificacaoFontePagadora(
      nome: map['nome'],
      numeroCartao: map['numeroCartao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IdentificacaoFontePagadora.fromJson(String source) =>
      IdentificacaoFontePagadora.fromMap(json.decode(source));

  @override
  String toString() =>
      'IdentificacaoFontePagadora(nome: $nome, numeroCartao: $numeroCartao)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IdentificacaoFontePagadora &&
        other.nome == nome &&
        other.numeroCartao == numeroCartao;
  }

  @override
  int get hashCode => nome.hashCode ^ numeroCartao.hashCode;
}
