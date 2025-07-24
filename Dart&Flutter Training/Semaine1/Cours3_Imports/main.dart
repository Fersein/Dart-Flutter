import 'dart:async';
import 'dart:io';

void main() async {
  print("On va attendre environ 10 secondes.");
  await Future.delayed(Duration(seconds: 1));
  print("Je suis la a temps.");

  stdout.write("Entrer un nom: ");
  String? name = stdin.readLineSync();
  print(name);
}