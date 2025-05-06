int power(int base, int exponent) {
  int result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= base;
  }
  return result;
}

void main() {
  int base = 2, exponent = 5;
  print('$base raised to the power of $exponent is ${power(base, exponent)}');
}