import 'dart:io';

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void describe() {
    print("\nOlá, meu nome é $name e tenho $age anos.");
  }
}

class Vehicle {
  void honk() {
    print("\nVeículo fazendo barulho.");
  }
}

class Car extends Vehicle {
  @override
  void honk() {
    print("\nVRUMMMM");
  }
}

class Bike extends Vehicle {
  @override
  void honk() {
    print("\nBIKEEEEEEEEEE");
  }
}

abstract class Shape {
  void area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  void area() {
    print("\nA area do circulo é: ${3.14 * radius * radius}");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  void area() {
    print("\nA area do retângulo é: ${width * height}");
  }
}

class Calculator {
  static void sum(int firtsValue, int secondValue) {
    print("\nA soma dos valores é: ${firtsValue + secondValue}");
  }

  static void subtract(int firtsValue, int secondValue) {
    print("\nA subtração dos valores é: ${firtsValue - secondValue}");
  }

  static void multiply(int firtsValue, int secondValue) {
    print("\nA multiplicação dos valores é: ${firtsValue * secondValue}");
  }

  static void divide(int firtsValue, int secondValue) {
    if (secondValue == 0) {
      print("\nNão é possível dividir por zero.");
    } else {
      print("\nA divisão dos valores é: ${firtsValue / secondValue}");
    }
  }
}

class Book {
  String title;
  String author;
  int year;
  Book(this.title, this.author, this.year);
  void describe() {
    print("\nO livro $title foi escrito por $author em $year.");
  }
}

void createPerson() {
  print("\nDigite o nome da pessoa:");
  String name = stdin.readLineSync()!;

  if (name.isEmpty || name.length < 3) {
    print("\nNome inválido.");
    return;
  }

  print("\nDigite a idade da pessoa:");
  int age = int.parse(stdin.readLineSync()!);
  if (age < 0 || age > 100) {
    print("\nIdade inválida.");
    return;
  }

  Person person = Person(name, age);
  person.describe();
}

void createVehicle() {
  print("\nDigite o tipo de veículo (1 - Carro, 2 - Moto):");
  int type = int.parse(stdin.readLineSync()!);

  if (type == 1) {
    Car car = Car();
    car.honk();
  } else if (type == 2) {
    Bike bike = Bike();
    bike.honk();
  } else {
    print("\nTipo de veículo inválido.");
  }
}

void createShape() {
  print("\nDigite o tipo de forma (1 - Círculo, 2 - Retângulo):");
  int type = int.parse(stdin.readLineSync()!);

  if (type == 1) {
    print("\nDigite o raio do círculo:");
    double radius = double.parse(stdin.readLineSync()!);
    Circle circle = Circle(radius);
    circle.area();
  } else if (type == 2) {
    print("\nDigite a largura do retângulo:");
    double width = double.parse(stdin.readLineSync()!);
    print("\nDigite a altura do retângulo:");
    double height = double.parse(stdin.readLineSync()!);
    Rectangle rectangle = Rectangle(width, height);
    rectangle.area();
  } else {
    print("\nTipo de forma inválido.");
  }
}

void calculator() {
  print("\nDigite o primeiro valor:");
  int firstValue = int.parse(stdin.readLineSync()!);
  print("\nDigite o segundo valor:");
  int secondValue = int.parse(stdin.readLineSync()!);

  print(
      "\nDigite a operação desejada (1 - Soma, 2 - Subtração, 3 - Multiplicação, 4 - Divisão):");
  int operation = int.parse(stdin.readLineSync()!);

  if (operation == 1) {
    Calculator.sum(firstValue, secondValue);
  } else if (operation == 2) {
    Calculator.subtract(firstValue, secondValue);
  } else if (operation == 3) {
    Calculator.multiply(firstValue, secondValue);
  } else if (operation == 4) {
    Calculator.divide(firstValue, secondValue);
  } else {
    print("\nOperação inválida.");
  }
}

void createBook() {
  print("\nDigite o título do livro:");
  String title = stdin.readLineSync()!;
  print("\nDigite o autor do livro:");
  String author = stdin.readLineSync()!;
  print("\nDigite o ano do livro:");
  int year = int.parse(stdin.readLineSync()!);

  Book book = Book(title, author, year);
  book.describe();
}

void main() {
  print("Menu de opções:");
  print(
      "\n1 - Crie uma classe Person com as propriedades name e age. Adicione um método describe que imprime uma descrição da pessoa.");
  print(
      "\n2 - Estenda a classe Vehicle para criar duas novas classes: Car e Bike. Ambas as classes devem ter um método honk, mas cada uma terá um som diferente.");
  print(
      "\n3 - Crie uma classe abstrata Shape com um método abstrato area. Crie classes Circle e Rectangle que implementam area.");
  print(
      "\n4 - Implemente uma classe Calculator com métodos estáticos para operações básicas (soma, subtração, multiplicação, divisão.)");
  print(
      "\n5 - Crie uma classe Book com propriedades title, author, e year. Implemente um método que exiba informações detalhadas sobre o livro.");
  print("\nDigite a opção desejada:");
  int option = int.parse(stdin.readLineSync()!);

  if (option == 1) {
    createPerson();
  } else if (option == 2) {
    createVehicle();
  } else if (option == 3) {
    createShape();
  } else if (option == 4) {
    calculator();
  } else if (option == 5) {
    createBook();
  } else {
    print("\nOpção inválida.");
  }
}
