void add(int a, int b) {
  String title = "Soma dos numeros:";
  int result = a + b;
  print("$title $result");
}

void verifyNumber(int number) {
  String title = "Verificação de numero:";
  if (number < 10) {
    return print("$title $number é menor que 10");
  }
  if (number > 10) {
    return print("$title $number é maior que 10");
  }

  print("$title $number é igual a 10");
}

void oddOrEven(int number) {
  String title = "Numero par ou impar:";
  if (number % 2 == 0) {
    return print("$title O numero $number é par");
  }
  print("$title O numero $number é impar");
}

void forNumber(int number) {
  String title = "For de numeros:";

  List numbers = [];
  for (int i = 1; i <= number; i++) {
    numbers.add(i);
  }

  String numbersFormatted = numbers.join(" ");
  print("$title $numbersFormatted");
}

void biggerSmaller(
    int number1, int number2, int number3, int number4, int number5) {
  String title = "Numero maior e menor:";
  List numbers = [number1, number2, number3, number4, number5];
  numbers.sort();
  print(
      "$title \n- Maior numero: ${numbers.last} \n- Menor numero: ${numbers.first}");
}

void concatString(String a, String b) {
  String title = "Concatenação de strings:";
  String result = a + " " + b;
  print("$title $result ");
}

void between10and20(int number) {
  String title = "Entre 10 e 20:";
  if (number >= 10 && number <= 20) {
    return print("$title $number é entre 10 e 20");
  }
  print("$title $number não é entre 10 e 20");
}

void daysOfWeek(int number) {
  String title = "Dia da semana:";
  switch (number) {
    case 1:
      print("$title $number - Domingo");
      break;
    case 2:
      print("$title $number - Segunda");
      break;
    case 3:
      print("$title $number - Terça");
      break;
    case 4:
      print("$title $number - Quarta");
      break;
    case 5:
      print("$title $number - Quinta");
      break;
    case 6:
      print("$title $number - Sexta");
      break;
    case 7:
      print("$title $number - Sábado");
      break;
    default:
      print("$title $number - Dia inválido");
      break;
  }
}

void evenNumber() {
  String title = "Numero par:";
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$title $i");
    }
  }
}

void equalNumber(int first_number, int second_number) {
  String title = "Numeros iguais:";
  if (first_number == second_number) {
    return print("$title $first_number e $second_number são iguais");
  }
  print("$title $first_number e $second_number não são iguais");
}

void main() {
  // Soma
  add(10, 10);

  // Verificar numero
  verifyNumber(9);

  // Impar ou par
  oddOrEven(20);

  // For
  forNumber(10);

  // Maior e menor
  biggerSmaller(10, 1000, 40, 90, 50);

  // Concatenação
  concatString("Hello", "World");

  // Entre 10 e 20
  between10and20(12);

  // Dia da semana
  daysOfWeek(3);

  // Numeros pares
  evenNumber();

  // Numeros iguais
  equalNumber(10, 20);
}
