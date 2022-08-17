import 'dart:io';

main() {
  stdout.write('Insira um número inteiro positivo: ');
  var linha = stdin.readLineSync()!;

  int numero = int.parse(linha);

  var resultado = somatorio_divisiveis_por_3_ou_5(numero);
  print('Resultado = ' + resultado.toString());
}

int somatorio_divisiveis_por_3_ou_5(numero) {
  var soma = 0;

  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }

  return soma;
}
