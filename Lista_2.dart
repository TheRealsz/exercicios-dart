void staticAndDynamicTyping() {
  String title = "Tipagem dinamica e estatica:";
  String staticValue = "João";
  dynamic dynamicValue = "João";
  print(title);
  print("Valor da variavel com tipagem estatica: $staticValue");
  print("Valor da variavel com tipagem dinamica: $dynamicValue");
  // staticValue = 10;
  dynamicValue = 10;
  print("Variavel com tipagem estatica nao aceita valor de outro tipo");
  print("Valor da variavel com tipagem dinamica: $dynamicValue");
}

void forOnArray() {
  String title = "Array de strings:";
  List<String> names = ["João", "Maria", "José", "Ana"];
  for (var name in names) {
    print("$title $name");
  }
}

void mapForIn() {
  String title = "Mapa de pessoas:";
  Map<String, int> people = {"João": 25, "Maria": 30, "José": 40, "Ana": 20};
  for (var name in people.keys) {
    print("$title $name tem ${people[name]} anos");
  }
}

void nullSafety() {
  String title = "Variaveis nulas e seguras:";
  String? nullableValue = "João";
  String nonNullableValue = "João";
  print("$title Variavel nula está recebendo: $nullableValue");
  print("$title Variavel segura está recebendo: $nonNullableValue");
  nullableValue = null;
  if (nullableValue == null) {
    return print("$title Variavel nula está recebendo: $nullableValue");
  }
  print("$title Variavel nula está recebendo: $nullableValue");
}

void main() {
  // Tipagem dinamica e estatica
  // 1.1 Programa que declara variavel com tipagem estatica e outra com tipagem dinamica, atribuindo valores de tipos diferentes e exibindo
  staticAndDynamicTyping();

  // Coleçoes
  // 2.1 Crie uma lista de strings e exiba todos os elementos usando um loop for
  forOnArray();

  // 2.2 Crie um mapa com o nome e a idade de algumas pessoas e exiba cada par chave-valor usando um loop for-in
  mapForIn();

  // Null safety
  // 3.1 Escreva um programa que demonstre o uso de variáveis nulas (null) e variáveis seguras (non-null) em Dart, incluindo a verificação de nulidade (null check)
  nullSafety();
}
