import 'dart:io';

void main() {
  stdout.write("HELLO WORLD ");
  var name = stdin.readLineSync();
  stdout.write("WELCOME, $name");
}
