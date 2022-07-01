void main() {
  Animal animal = Animal('Rex', 5, 'Cachorro');
  animal
    ..correr()
    ..gritar();
}

class Animal {
  String nome;
  int idade;
  String especie;

  Animal(this.nome, this.idade, this.especie);

  void gritar() {
    print('$nome está gritando');
  }

  void correr() {
    print('$nome está correndo');
  }
}
