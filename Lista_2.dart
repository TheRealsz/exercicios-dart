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

void nullSafetyExample() {
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

void somaInteiros(int a, int b) {
  String title = "Soma dos numeros:";
  int result = a + b;
  print("$title $result");
}

void biggestNumberInList(List<int> numbers) {
  String title = "Maior numero da lista:";
  numbers.sort();
  int biggestNumber = numbers.last;
  print("$title $biggestNumber");
}

void printMessage() {
  String title = "Mensagem:";
  print("$title Olá, mundo!");
}

void somaDecimais(double primeiroDecimal, double segundoDecimal) {
  String title = "Soma de decimais:";
  double result = primeiroDecimal + segundoDecimal;
  int resultInt = result.toInt();
  print("$title $resultInt");
}

void somaDecimaisArredonda(double primeiroDecimal, double segundoDecimal, [int? casasDecimais]) {
  String title = "Soma de decimais com arredondamento:";
  double result = primeiroDecimal + segundoDecimal;
  if (casasDecimais != null) {
    result = double.parse(result.toStringAsFixed(casasDecimais));
  }
  int resultInt = result.toInt();
  print("$title $resultInt");
}

List<int> bubbleSort(List<int> numbers) {
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  return numbers;
}

void ordenaLista(List<int> numbers) {
  String title = "Ordenação de lista:";
  List<int> sortedNumbers = bubbleSort(numbers);
  String sortedNumbersFormatted = sortedNumbers.join(" ");
  print("$title $sortedNumbersFormatted");
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
  nullSafetyExample();

  // Convencoes de codificacao
  // 4.1 Escreva um programa que siga as convenções de codificação em Dart, incluindo o uso de nomes de variáveis descritivos, indentação consistente e comentários explicativos
  // Todo este arquivo está seguindo convençoẽs de codificação em Dart

  // Funcoes
  // 5.1 Escreva uma função chamada somaInteiros que receba dois números inteiros como parâmetros e retorne a soma
  somaInteiros(10, 20);

  // 5.2 Escreva uma função chamada maiorNumeroLista que receba uma lista de números inteiros como parâmetro e retorne o maior número da lista
  biggestNumberInList([10, 60, 30, 40, 50]);

  // 5.3 Escreva uma função chamada imprimirMensagem que não receba nenhum parâmetro e imprima uma mensagem na tela
  printMessage();

  // 5.4 Escreva uma função chamada somaDecimais que receba dois números decimais como parâmetros nomeados ("primeiroDecimal" e "segundoDecimal") e retorne somente a parte inteira da soma
  somaDecimais(10.25, 20.50);

  // 5.5 Escreva uma função chamada somaDecimaisArredonda que receba dois números decimais como parâmetros obrigatórios e um terceiro parâmetro opcional. A função deve retornar somente a parte inteira da soma, arredondando o número de acordo com as regras especificadas
  somaDecimaisArredonda(10.25, 20.50, 1);

  // 5.6 Escreva uma função chamada ordenaLista que receba uma lista de números inteiros como parâmetro e retorne uma nova lista ordenada em ordem crescente. Utilize o método de ordenação bolha (Bubble sort) para implementar essa função
  ordenaLista([10, 60, 30, 40, 50]);
}
