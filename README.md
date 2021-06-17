Convertendo encryptação de Cesar (e outras coisas mais do IPSM) de Java para Dart

## Codigo Java

'''
/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class GeraSenhaIntegracao
{

public static String encriptarCesar(int chave, String texto){
       
        StringBuilder textoCifrado = new StringBuilder();
        int tamanhoTexto = texto.length();
        for(int c=0; c < tamanhoTexto; c++){
           int letraCifradaASCII = ((int) texto.charAt(c)) + chave;
           while(letraCifradaASCII > 126)
              letraCifradaASCII -= 94;
           textoCifrado.append( (char)letraCifradaASCII );
        }
       
        return textoCifrado.toString();
     }

    public static String encodeHex(String base)
    {
// Step-1 - Convert ASCII string to char array
      char[] ch = base.toCharArray();

      StringBuilder builder = new StringBuilder();
      for (char c : ch) {
         // Step-2 Use %H to format character to Hex
         String hexCode=String.format("%H", c);
         builder.append(hexCode);
      }
      return builder.toString();  
}

public static void main (String[] args) throws java.lang.Exception
{
System.out.println(encodeHex(encriptarCesar(7907, "oculos123")));
//encriptarCesar(7907, "oculos123") saida será: zn"wz~<=>
//encodeHex(encriptarCesar(7907, "oculos123")) saida será: 7A6E22777A7E3C3D3E
7A6E22777A7E3C3D3E
}
}

'''

## Código em Dart

'''
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
      GeraSenhaIntegracao(chave: 7907, textoOriginal: 'oculos123');
  print(geraSenhaIntegracao.encriptarCesar());
  print(geraSenhaIntegracao.textoCifradoHex());
}
'''