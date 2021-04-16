import 'dart:math';
import 'package:is_odd/is_odd.dart';

void main() {
  final number = Random().nextInt(0xFF);

  print('$number is ${isOdd(number) ? '' : 'not'} odd');
}
