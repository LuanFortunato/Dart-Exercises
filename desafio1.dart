import 'dart:math';

void main() {
  desafio1();
}

void desafio1() {
  List<int> numeros = criaVetorNumeros();

  sort(numeros);

  listaVetor(numeros);
}

void desafio2() {
  List numeros = [];
  int total = 0;

  for (var i = 0; i < 1000000; i++) {
    numeros = i.toString().split('');

    List inverso = numeros.reversed.toList();

    int numero = int.parse(inverso.join(''));

    if ((i + numero > 1000000) ||
        ((i + numero).isEven) ||
        int.parse(inverso.toList()[0]) == 0) {
      continue;
    }

    total += numero + i;
  }
  print(total);
}

List<int> criaVetorNumeros() {
  List<int> numeros = [];

  for (var i = 0; i < 10; i++) {
    Random numero = Random();
    numeros.add(numero.nextInt(100));
  }

  return numeros;
}

void listaVetor(List<int> lista) {
  for (var i = 0; i < lista.length; i++) {
    print(lista[i]);
  }
}

List<int> sort(List<int> lista) {
  for (var i = 0; i < lista.length; i++) {
    for (var j = 0; j < lista.length - 1 - i; j++) {
      if (lista[j] > lista[j + 1]) {
        int aux = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = aux;
      }
    }
  }
  return lista;
}
