import 'dart:io';
import './class.dart';

void main() {
  var builder = new Builder();
  print(builder.addMany(["api", "v1", "package"]).build());
  stdin.readLineSync();
}