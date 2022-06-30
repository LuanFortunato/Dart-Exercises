import 'dart:math';

void main() {
  print('Função 1');
  desafio1();
  print('Função 2');
  desafio2();
}

//Cria um vetor de números aleatórios e ordena
void desafio1() {
  List<int> numeros = criaVetorNumeros();

  sort(numeros);

  listaVetor(numeros);
}

//Soma todos os números que não terminam em zero, que, se somados com seu inverso, dão um resultado ímpar e menor que um milhão
void desafio2() {
  List numeros = [];
  int total = 0;

  for (int i = 0; i < 1000000; i++) {
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

  for (int i = 0; i < 10; i++) {
    Random numero = Random();
    numeros.add(numero.nextInt(100));
  }

  return numeros;
}

void listaVetor(List<int> lista) {
  for (int i = 0; i < lista.length; i++) {
    print(lista[i]);
  }
}

List<int> sort(List<int> lista) {
  for (int i = 0; i < lista.length; i++) {
    for (int j = 0; j < lista.length - 1 - i; j++) {
      if (lista[j] > lista[j + 1]) {
        int aux = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = aux;
      }
    }
  }
  return lista;
}
