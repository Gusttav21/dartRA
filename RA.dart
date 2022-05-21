import 'dart:io';

void main() {
  late String? raAluno;
  late int valorRA;
  late int tamanhoString;
  int lmit = 20;
  stdout.write("Escreva quantos RA: ");
  String? value = stdin.readLineSync();
  int qtde = int.parse(value!);

  stdout.write(qtde);
  final dynamiclist = <int>[];
  print(dynamiclist);

  for (int i = 0; i < qtde; i++) {
    raAluno = stdin.readLineSync();
    tamanhoString = raAluno!.length;
    if (raAluno.startsWith('RA') && tamanhoString == lmit) {
      valorRA = int.parse(raAluno.replaceRange(0, 2, '00'));
      dynamiclist.add(valorRA);
      print(valorRA);
    } else {
      print('INVALID DATA');
    }
    //valorRA = int.parse(raAluno);
    // dynamiclist.add(valorRA);
  }
  print(dynamiclist);
}
