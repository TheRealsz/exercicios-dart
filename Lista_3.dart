import 'dart:io';
import 'dart:convert';

void imprimirMapa(Map<String, String> mapa) {
  String title = "Mapa:";
  mapa.forEach((key, value) => print("$title $key -> $value"));
}

void somaValoresMapa(Map<String, int> mapa) {
  String title = "Soma dos valores do mapa:";
  int result = 0;
  mapa.forEach((key, value) => result += value);
  print("$title $result");
}

void filtrarMapa(Map<String, int> mapa) {
  String title = "Mapa filtrado:";
  Map<String, int> newMap = {};
  mapa.forEach((key, value) {
    if (value > 10) {
      newMap[key] = value;
    }
  });

  newMap.forEach((key, value) {
    print("$title $key -> $value");
  });
}

void lerJson() {
  String title = "Alunos:";
  File jsonFile = File('mockData.json');
  // Lendo o arquivo json como string e tranformando em um mapa (objeto) com o jsonDecode
  Map<String, dynamic> studentsData = jsonDecode(jsonFile.readAsStringSync());
  List<dynamic> students = studentsData['alunos'];
  print("$title");
  students.forEach((element) {
    print(
        "Nome: ${element['nome']}, Idade: ${element['idade']}, Curso: ${element['curso']}");
  });
}

void main() {
  // Mapas
  // 1.1 - Escreva uma função chamada imprimirMapa que receba um mapa como parâmetro e imprima todas as chaves e valores do mapa
  Map<String, String> mapa = {
    "nome": "João",
    "idade": "25",
    "cidade": "São Paulo"
  };

  imprimirMapa(mapa);

  // 1.2 - Escreva uma função chamada somaValoresMapa que receba um mapa de inteiros como parâmetro e retorne a soma de todos os valores do mapa.
  Map<String, int> mapaInt = {"valor1": 10, "valor2": 20, "valor3": 30};

  somaValoresMapa(mapaInt);

  // 1.3 - Escreva uma função chamada filtrarMapa que receba um mapa de inteiros como parâmetro e retorne um novo mapa contendo apenas os pares chave-valor em que o valor é maior que 10
  filtrarMapa(mapaInt);

  // 1.4 - Escreva uma função chamada lerJson que leia um arquivo JSON do sistema de arquivos e retorne um mapa com os dados contidos no arquivo. (Use o File e também readAsStringSync())
  lerJson();
}
