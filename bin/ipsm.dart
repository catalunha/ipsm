class GeraSenhaIntegracao {
  final int chave;
  final String textoOriginal;
  var _textoCifrado = '';
  GeraSenhaIntegracao({required this.chave, required this.textoOriginal});
  // Converte caracter para inteiro ASCII em UTF-16 e soma a chave
  // Desloca 94 posições se valor acima de 126
  // Converte para ASCII
  String encriptarCesar() {
    for (var i = 0; i < textoOriginal.length; i++) {
      var letraCifrada = textoOriginal.codeUnitAt(i) + chave;
      while (letraCifrada > 126) {
        letraCifrada -= 94;
      }
      _textoCifrado += String.fromCharCode(letraCifrada);
    }

    return _textoCifrado;
  }

  String textoCifradoHex() {
    var textoCifradoHex = '';
    for (var i = 0; i < _textoCifrado.length; i++) {
      textoCifradoHex += _textoCifrado.codeUnitAt(i).toRadixString(16);
    }
    return textoCifradoHex;
  }
}

void main(List<String> arguments) {
  var geraSenhaIntegracao =
      GeraSenhaIntegracao(chave: 7907, textoOriginal: 'INTEGRACAO2021');
  print(geraSenhaIntegracao.encriptarCesar());
  print(geraSenhaIntegracao.textoCifradoHex());
}
